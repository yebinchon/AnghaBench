; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_nb_put_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_nb_put_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbchain = type { i32 }
%struct.sockaddr_nb = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@MB_MSYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbchain*, %struct.sockaddr_nb*)* @nb_put_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nb_put_name(%struct.mbchain* %0, %struct.sockaddr_nb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbchain*, align 8
  %5 = alloca %struct.sockaddr_nb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.mbchain* %0, %struct.mbchain** %4, align 8
  store %struct.sockaddr_nb* %1, %struct.sockaddr_nb** %5, align 8
  %9 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr_nb, %struct.sockaddr_nb* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  store i64* %11, i64** %8, align 8
  %12 = load i64*, i64** %8, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load i64*, i64** %8, align 8
  %19 = call i32 @NBDEBUG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %18)
  br label %20

20:                                               ; preds = %37, %17
  %21 = load i64*, i64** %8, align 8
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %7, align 8
  %24 = load %struct.mbchain*, %struct.mbchain** %4, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @MB_MSYSTEM, align 4
  %28 = call i32 @mb_put_mem(%struct.mbchain* %24, i64* %25, i64 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %20
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %41

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 %38
  store i64* %40, i64** %8, align 8
  br label %20

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %31, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @NBDEBUG(i8*, i64*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
