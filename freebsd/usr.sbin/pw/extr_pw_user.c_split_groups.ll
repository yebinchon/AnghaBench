; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_split_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_split_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }

@__const.split_groups.tok = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i8*)* @split_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_groups(i32** %0, i8* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i8], align 1
  store i32** %0, i32*** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.split_groups.tok, i32 0, i32 0), i64 4, i1 false)
  %9 = load i32**, i32*** %3, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32* (...) @sl_init()
  %14 = load i32**, i32*** %3, align 8
  store i32* %13, i32** %14, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %18 = call i8* @strtok(i8* %16, i8* %17)
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %32, %15
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = call %struct.group* @group_from_name_or_id(i8* %23)
  store %struct.group* %24, %struct.group** %5, align 8
  %25 = load i32**, i32*** %3, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.group*, %struct.group** %5, align 8
  %28 = getelementptr inbounds %struct.group, %struct.group* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @newstr(i32 %29)
  %31 = call i32 @sl_add(i32* %26, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %34 = call i8* @strtok(i8* null, i8* %33)
  store i8* %34, i8** %6, align 8
  br label %19

35:                                               ; preds = %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @sl_init(...) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local %struct.group* @group_from_name_or_id(i8*) #2

declare dso_local i32 @sl_add(i32*, i32) #2

declare dso_local i32 @newstr(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
