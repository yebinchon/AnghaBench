; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_setup_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Error path taken without providing an error code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.netfront_info*, i64)* @setup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_device(i32 %0, %struct.netfront_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.netfront_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.netfront_info* %1, %struct.netfront_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %11 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %16 = call i32 @destroy_txqs(%struct.netfront_info* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %19 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %24 = call i32 @destroy_rxqs(%struct.netfront_info* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %27 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @setup_rxqs(i32 %28, %struct.netfront_info* %29, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %72

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @setup_txqs(i32 %36, %struct.netfront_info* %37, i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %72

43:                                               ; preds = %35
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %46 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %68, %43
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %7, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %54 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %62 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %47

71:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %78

72:                                               ; preds = %42, %34
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @KASSERT(i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %72, %71
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @destroy_txqs(%struct.netfront_info*) #1

declare dso_local i32 @destroy_rxqs(%struct.netfront_info*) #1

declare dso_local i32 @setup_rxqs(i32, %struct.netfront_info*, i64) #1

declare dso_local i32 @setup_txqs(i32, %struct.netfront_info*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
