; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_inituser.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_inituser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user = type { i64, i64, i64, i64, i64 }

@nusers = common dso_local global i32 0, align 4
@users = common dso_local global %struct.user* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"allocate users\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @inituser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inituser() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.user*, align 8
  %3 = load i32, i32* @nusers, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %0
  store i32 8, i32* @nusers, align 4
  %6 = load i32, i32* @nusers, align 4
  %7 = call i64 @calloc(i32 %6, i32 40)
  %8 = inttoptr i64 %7 to %struct.user*
  store %struct.user* %8, %struct.user** @users, align 8
  %9 = icmp ne %struct.user* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %5
  br label %35

13:                                               ; preds = %0
  %14 = load %struct.user*, %struct.user** @users, align 8
  store %struct.user* %14, %struct.user** %2, align 8
  %15 = load i32, i32* @nusers, align 4
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %31, %13
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %1, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load %struct.user*, %struct.user** %2, align 8
  %22 = getelementptr inbounds %struct.user, %struct.user* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.user*, %struct.user** %2, align 8
  %24 = getelementptr inbounds %struct.user, %struct.user* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.user*, %struct.user** %2, align 8
  %26 = getelementptr inbounds %struct.user, %struct.user* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.user*, %struct.user** %2, align 8
  %28 = getelementptr inbounds %struct.user, %struct.user* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.user*, %struct.user** %2, align 8
  %30 = getelementptr inbounds %struct.user, %struct.user* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %20
  %32 = load %struct.user*, %struct.user** %2, align 8
  %33 = getelementptr inbounds %struct.user, %struct.user* %32, i32 1
  store %struct.user* %33, %struct.user** %2, align 8
  br label %16

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34, %12
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
