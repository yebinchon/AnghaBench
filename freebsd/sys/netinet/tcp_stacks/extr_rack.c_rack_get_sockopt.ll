; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_get_sockopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_get_sockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { i64 }
%struct.tcp_rack = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockopt*, %struct.inpcb*, %struct.tcpcb*, %struct.tcp_rack*)* @rack_get_sockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_get_sockopt(%struct.socket* %0, %struct.sockopt* %1, %struct.inpcb* %2, %struct.tcpcb* %3, %struct.tcp_rack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.sockopt*, align 8
  %9 = alloca %struct.inpcb*, align 8
  %10 = alloca %struct.tcpcb*, align 8
  %11 = alloca %struct.tcp_rack*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.sockopt* %1, %struct.sockopt** %8, align 8
  store %struct.inpcb* %2, %struct.inpcb** %9, align 8
  store %struct.tcpcb* %3, %struct.tcpcb** %10, align 8
  store %struct.tcp_rack* %4, %struct.tcp_rack** %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.sockopt*, %struct.sockopt** %8, align 8
  %15 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %121 [
    i32 147, label %17
    i32 135, label %21
    i32 136, label %26
    i32 130, label %31
    i32 146, label %36
    i32 138, label %41
    i32 139, label %45
    i32 140, label %49
    i32 134, label %53
    i32 141, label %58
    i32 145, label %63
    i32 132, label %68
    i32 133, label %73
    i32 150, label %78
    i32 129, label %82
    i32 137, label %87
    i32 128, label %92
    i32 131, label %96
    i32 143, label %98
    i32 142, label %100
    i32 144, label %104
    i32 151, label %108
    i32 148, label %113
    i32 149, label %117
  ]

17:                                               ; preds = %5
  %18 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %19 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %13, align 8
  br label %127

21:                                               ; preds = %5
  %22 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %23 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  br label %127

26:                                               ; preds = %5
  %27 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %28 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  br label %127

31:                                               ; preds = %5
  %32 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %33 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  br label %127

36:                                               ; preds = %5
  %37 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %38 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %37, i32 0, i32 9
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  br label %127

41:                                               ; preds = %5
  %42 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %43 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  br label %127

45:                                               ; preds = %5
  %46 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %47 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %13, align 8
  br label %127

49:                                               ; preds = %5
  %50 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %51 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %13, align 8
  br label %127

53:                                               ; preds = %5
  %54 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %55 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %54, i32 0, i32 9
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %13, align 8
  br label %127

58:                                               ; preds = %5
  %59 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %60 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %59, i32 0, i32 9
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %13, align 8
  br label %127

63:                                               ; preds = %5
  %64 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %65 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %13, align 8
  br label %127

68:                                               ; preds = %5
  %69 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %70 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %13, align 8
  br label %127

73:                                               ; preds = %5
  %74 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %75 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %74, i32 0, i32 9
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %13, align 8
  br label %127

78:                                               ; preds = %5
  %79 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %80 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %13, align 8
  br label %127

82:                                               ; preds = %5
  %83 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %84 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %13, align 8
  br label %127

87:                                               ; preds = %5
  %88 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %89 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %88, i32 0, i32 9
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %13, align 8
  br label %127

92:                                               ; preds = %5
  %93 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %94 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %13, align 8
  br label %127

96:                                               ; preds = %5
  %97 = load i64, i64* @EINVAL, align 8
  store i64 %97, i64* %12, align 8
  br label %127

98:                                               ; preds = %5
  %99 = load i64, i64* @EINVAL, align 8
  store i64 %99, i64* %12, align 8
  br label %127

100:                                              ; preds = %5
  %101 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %102 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %13, align 8
  br label %127

104:                                              ; preds = %5
  %105 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %106 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %13, align 8
  br label %127

108:                                              ; preds = %5
  %109 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %110 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 11
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %13, align 8
  br label %127

113:                                              ; preds = %5
  %114 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %115 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %13, align 8
  br label %127

117:                                              ; preds = %5
  %118 = load %struct.tcp_rack*, %struct.tcp_rack** %11, align 8
  %119 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %118, i32 0, i32 8
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %13, align 8
  br label %127

121:                                              ; preds = %5
  %122 = load %struct.socket*, %struct.socket** %7, align 8
  %123 = load %struct.sockopt*, %struct.sockopt** %8, align 8
  %124 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %125 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %126 = call i32 @tcp_default_ctloutput(%struct.socket* %122, %struct.sockopt* %123, %struct.inpcb* %124, %struct.tcpcb* %125)
  store i32 %126, i32* %6, align 4
  br label %138

127:                                              ; preds = %117, %113, %108, %104, %100, %98, %96, %92, %87, %82, %78, %73, %68, %63, %58, %53, %49, %45, %41, %36, %31, %26, %21, %17
  %128 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %129 = call i32 @INP_WUNLOCK(%struct.inpcb* %128)
  %130 = load i64, i64* %12, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.sockopt*, %struct.sockopt** %8, align 8
  %134 = call i64 @sooptcopyout(%struct.sockopt* %133, i64* %13, i32 8)
  store i64 %134, i64* %12, align 8
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i64, i64* %12, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %135, %121
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @tcp_default_ctloutput(%struct.socket*, %struct.sockopt*, %struct.inpcb*, %struct.tcpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i64 @sooptcopyout(%struct.sockopt*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
