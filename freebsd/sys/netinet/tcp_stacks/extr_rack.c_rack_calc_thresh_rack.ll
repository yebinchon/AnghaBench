; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_calc_thresh_rack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_calc_thresh_rack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@rack_rto_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_rack*, i32, i32)* @rack_calc_thresh_rack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_calc_thresh_rack(%struct.tcp_rack* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_rack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcp_rack* %0, %struct.tcp_rack** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %3
  %13 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %14 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %12
  %19 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %20 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %27 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @SEQ_GEQ(i32 %25, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %35 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %33, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %32
  br label %44

43:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %47 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %45, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %53 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %44
  br label %57

56:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %59

58:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %62 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %60, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %59
  %69 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %70 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %77 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %75, %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %88

83:                                               ; preds = %68
  %84 = load i32, i32* %5, align 4
  %85 = ashr i32 %84, 2
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %83, %74
  br label %92

89:                                               ; preds = %59
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %89, %88
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %95 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @TICKS_2_MSEC(i32 %98)
  %100 = icmp sgt i32 %93, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %92
  %102 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %103 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @TICKS_2_MSEC(i32 %106)
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %101, %92
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @rack_rto_max, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @rack_rto_max, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %112, %108
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i64 @SEQ_GEQ(i32, i32) #1

declare dso_local i32 @TICKS_2_MSEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
