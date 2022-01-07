; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_build_medialist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_build_medialist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, %struct.link_config, %struct.ifmedia }
%struct.link_config = type { i32 }
%struct.ifmedia = type { i32 }

@FIXED_IFMEDIA = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@S_FW_PORT_CAP32_SPEED = common dso_local global i32 0, align 4
@M_FW_PORT_CAP32_SPEED = common dso_local global i32 0, align 4
@IFM_UNKNOWN = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@FW_PORT_CAP32_ANEG = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_info*)* @build_medialist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_medialist(%struct.port_info* %0) #0 {
  %2 = alloca %struct.port_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.link_config*, align 8
  %9 = alloca %struct.ifmedia*, align 8
  store %struct.port_info* %0, %struct.port_info** %2, align 8
  %10 = load %struct.port_info*, %struct.port_info** %2, align 8
  %11 = call i32 @PORT_LOCK_ASSERT_OWNED(%struct.port_info* %10)
  %12 = load %struct.port_info*, %struct.port_info** %2, align 8
  %13 = getelementptr inbounds %struct.port_info, %struct.port_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FIXED_IFMEDIA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %129

19:                                               ; preds = %1
  %20 = load %struct.port_info*, %struct.port_info** %2, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 2
  store %struct.ifmedia* %21, %struct.ifmedia** %9, align 8
  %22 = load %struct.ifmedia*, %struct.ifmedia** %9, align 8
  %23 = call i32 @ifmedia_removeall(%struct.ifmedia* %22)
  %24 = load %struct.port_info*, %struct.port_info** %2, align 8
  %25 = getelementptr inbounds %struct.port_info, %struct.port_info* %24, i32 0, i32 1
  store %struct.link_config* %25, %struct.link_config** %8, align 8
  %26 = load %struct.link_config*, %struct.link_config** %8, align 8
  %27 = getelementptr inbounds %struct.link_config, %struct.link_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @G_FW_PORT_CAP32_SPEED(i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @__predict_false(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %19
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @MPASS(i32 %38)
  br label %40

40:                                               ; preds = %80, %35
  %41 = load %struct.ifmedia*, %struct.ifmedia** %9, align 8
  %42 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %41, i32 0, i32 0
  %43 = call i32 @LIST_EMPTY(i32* %42)
  %44 = call i32 @MPASS(i32 %43)
  %45 = load %struct.ifmedia*, %struct.ifmedia** %9, align 8
  %46 = load i32, i32* @IFM_ETHER, align 4
  %47 = load i32, i32* @IFM_NONE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @ifmedia_add(%struct.ifmedia* %45, i32 %48, i32 0, i32* null)
  %50 = load %struct.ifmedia*, %struct.ifmedia** %9, align 8
  %51 = load i32, i32* @IFM_ETHER, align 4
  %52 = load i32, i32* @IFM_NONE, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @ifmedia_set(%struct.ifmedia* %50, i32 %53)
  br label %129

55:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  %56 = load i32, i32* @S_FW_PORT_CAP32_SPEED, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %99, %55
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @fls(i32 %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %102

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 1, %63
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @M_FW_PORT_CAP32_SPEED, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @MPASS(i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %62
  %74 = load %struct.port_info*, %struct.port_info** %2, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @port_mword(%struct.port_info* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @IFM_NONE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %40

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @IFM_UNKNOWN, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %96

88:                                               ; preds = %81
  %89 = load %struct.ifmedia*, %struct.ifmedia** %9, align 8
  %90 = load i32, i32* @IFM_ETHER, align 4
  %91 = load i32, i32* @IFM_FDX, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @ifmedia_add4(%struct.ifmedia* %89, i32 %94)
  br label %96

96:                                               ; preds = %88, %85
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %62
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %57

102:                                              ; preds = %57
  %103 = load i32, i32* %5, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.ifmedia*, %struct.ifmedia** %9, align 8
  %107 = load i32, i32* @IFM_ETHER, align 4
  %108 = load i32, i32* @IFM_FDX, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @IFM_UNKNOWN, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @ifmedia_add4(%struct.ifmedia* %106, i32 %111)
  br label %113

113:                                              ; preds = %105, %102
  %114 = load %struct.link_config*, %struct.link_config** %8, align 8
  %115 = getelementptr inbounds %struct.link_config, %struct.link_config* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load %struct.ifmedia*, %struct.ifmedia** %9, align 8
  %122 = load i32, i32* @IFM_ETHER, align 4
  %123 = load i32, i32* @IFM_AUTO, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @ifmedia_add(%struct.ifmedia* %121, i32 %124, i32 0, i32* null)
  br label %126

126:                                              ; preds = %120, %113
  %127 = load %struct.port_info*, %struct.port_info** %2, align 8
  %128 = call i32 @set_current_media(%struct.port_info* %127)
  br label %129

129:                                              ; preds = %126, %40, %18
  ret void
}

declare dso_local i32 @PORT_LOCK_ASSERT_OWNED(%struct.port_info*) #1

declare dso_local i32 @ifmedia_removeall(%struct.ifmedia*) #1

declare dso_local i32 @G_FW_PORT_CAP32_SPEED(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @ifmedia_add(%struct.ifmedia*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(%struct.ifmedia*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @port_mword(%struct.port_info*, i32) #1

declare dso_local i32 @ifmedia_add4(%struct.ifmedia*, i32) #1

declare dso_local i32 @set_current_media(%struct.port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
