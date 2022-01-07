; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_usrrehash.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_usrrehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user = type { i32, i64 }

@users = common dso_local global %struct.user* null, align 8
@nusers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"allocate users\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usrrehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usrrehash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.user*, align 8
  %3 = alloca %struct.user*, align 8
  %4 = alloca %struct.user*, align 8
  %5 = load %struct.user*, %struct.user** @users, align 8
  store %struct.user* %5, %struct.user** %4, align 8
  %6 = load i32, i32* @nusers, align 4
  %7 = shl i32 %6, 1
  store i32 %7, i32* @nusers, align 4
  %8 = load i32, i32* @nusers, align 4
  %9 = call i64 @calloc(i32 %8, i32 16)
  %10 = inttoptr i64 %9 to %struct.user*
  store %struct.user* %10, %struct.user** @users, align 8
  %11 = icmp ne %struct.user* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = load %struct.user*, %struct.user** %4, align 8
  store %struct.user* %15, %struct.user** %2, align 8
  %16 = load i32, i32* @nusers, align 4
  %17 = ashr i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %55, %14
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %1, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = load %struct.user*, %struct.user** @users, align 8
  %24 = load %struct.user*, %struct.user** %2, align 8
  %25 = getelementptr inbounds %struct.user, %struct.user* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @nusers, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.user, %struct.user* %23, i64 %30
  store %struct.user* %31, %struct.user** %3, align 8
  br label %32

32:                                               ; preds = %47, %22
  %33 = load %struct.user*, %struct.user** %3, align 8
  %34 = getelementptr inbounds %struct.user, %struct.user* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.user*, %struct.user** %3, align 8
  %39 = load %struct.user*, %struct.user** @users, align 8
  %40 = icmp ule %struct.user* %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.user*, %struct.user** @users, align 8
  %43 = load i32, i32* @nusers, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.user, %struct.user* %42, i64 %44
  store %struct.user* %45, %struct.user** %3, align 8
  br label %46

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.user*, %struct.user** %3, align 8
  %49 = getelementptr inbounds %struct.user, %struct.user* %48, i32 -1
  store %struct.user* %49, %struct.user** %3, align 8
  br label %32

50:                                               ; preds = %32
  %51 = load %struct.user*, %struct.user** %3, align 8
  %52 = load %struct.user*, %struct.user** %2, align 8
  %53 = bitcast %struct.user* %51 to i8*
  %54 = bitcast %struct.user* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  br label %55

55:                                               ; preds = %50
  %56 = load %struct.user*, %struct.user** %2, align 8
  %57 = getelementptr inbounds %struct.user, %struct.user* %56, i32 1
  store %struct.user* %57, %struct.user** %2, align 8
  br label %18

58:                                               ; preds = %18
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
