; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_del_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_del_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@RESVD_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPFW_DEFAULT_RULE = common dso_local global i32 0, align 4
@IPFW_RCFLAG_ALL = common dso_local global i32 0, align 4
@IPFW_RCFLAG_RANGE = common dso_local global i32 0, align 4
@IPFW_RCFLAG_SET = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32)* @del_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_entry(%struct.ip_fw_chain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 65535
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 255
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 16
  %20 = and i32 %19, 255
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 5
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @RESVD_SET, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %2
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %139

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %38, label %45

38:                                               ; preds = %35, %32, %29
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @IPFW_DEFAULT_RULE, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %3, align 4
  br label %139

44:                                               ; preds = %38
  br label %52

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @RESVD_SET, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %3, align 4
  br label %139

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %44
  %53 = call i32 @memset(%struct.TYPE_6__* %12, i32 0, i32 20)
  %54 = load i32, i32* %6, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  switch i32 %62, label %113 [
    i32 0, label %63
    i32 1, label %77
    i32 5, label %82
    i32 2, label %92
    i32 3, label %97
    i32 4, label %105
  ]

63:                                               ; preds = %52
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* @IPFW_RCFLAG_ALL, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %76

71:                                               ; preds = %63
  %72 = load i32, i32* @IPFW_RCFLAG_RANGE, align 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %66
  store i32 1, i32* %9, align 4
  br label %115

77:                                               ; preds = %52
  %78 = load i32, i32* @IPFW_RCFLAG_SET, align 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  store i32 1, i32* %9, align 4
  br label %115

82:                                               ; preds = %52
  %83 = load i32, i32* @IPFW_RCFLAG_RANGE, align 4
  %84 = load i32, i32* @IPFW_RCFLAG_SET, align 4
  %85 = or i32 %83, %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %85
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %8, align 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32 0, i32* %91, align 4
  store i32 1, i32* %9, align 4
  br label %115

92:                                               ; preds = %52
  %93 = load i32, i32* @IPFW_RCFLAG_RANGE, align 4
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %115

97:                                               ; preds = %52
  %98 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %99 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %98)
  %100 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %101 = call i32 @swap_sets(%struct.ip_fw_chain* %100, %struct.TYPE_6__* %12, i32 1)
  store i32 %101, i32* %11, align 4
  %102 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %103 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %3, align 4
  br label %139

105:                                              ; preds = %52
  %106 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %107 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %106)
  %108 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %109 = call i32 @swap_sets(%struct.ip_fw_chain* %108, %struct.TYPE_6__* %12, i32 0)
  store i32 %109, i32* %11, align 4
  %110 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %111 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %110)
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %3, align 4
  br label %139

113:                                              ; preds = %52
  %114 = load i32, i32* @ENOTSUP, align 4
  store i32 %114, i32* %3, align 4
  br label %139

115:                                              ; preds = %92, %82, %77, %76
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %115
  %119 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %120 = call i32 @delete_range(%struct.ip_fw_chain* %119, %struct.TYPE_6__* %12, i32* %10)
  store i32 %120, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %3, align 4
  br label %139

124:                                              ; preds = %118
  %125 = load i32, i32* %10, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 1
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %3, align 4
  br label %139

135:                                              ; preds = %130, %127, %124
  store i32 0, i32* %3, align 4
  br label %139

136:                                              ; preds = %115
  %137 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %138 = call i32 @move_range(%struct.ip_fw_chain* %137, %struct.TYPE_6__* %12)
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %136, %135, %133, %122, %113, %105, %97, %49, %42, %27
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @swap_sets(%struct.ip_fw_chain*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @delete_range(%struct.ip_fw_chain*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @move_range(%struct.ip_fw_chain*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
