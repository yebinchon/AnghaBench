; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_ifupdstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_ifupdstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, i64, i64, i64, i32, i64, i32, %struct.ifnet*, %struct.bstp_state* }
%struct.ifnet = type { i32 (%struct.ifnet*, i32, i32)*, i32 }
%struct.bstp_state = type { i32 }
%struct.ifmediareq = type { i32, i32 }

@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@BSTP_PORT_AUTOPTP = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@BSTP_PORT_PNDCOST = common dso_local global i32 0, align 4
@BSTP_ROLE_DISABLED = common dso_local global i64 0, align 8
@BSTP_PORT_ADMEDGE = common dso_local global i32 0, align 4
@BSTP_PROTO_RSTP = common dso_local global i64 0, align 8
@BSTP_INFO_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bstp_ifupdstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_ifupdstatus(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bstp_port*, align 8
  %6 = alloca %struct.bstp_state*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.ifmediareq, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.bstp_port*
  store %struct.bstp_port* %14, %struct.bstp_port** %5, align 8
  %15 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %16 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %15, i32 0, i32 9
  %17 = load %struct.bstp_state*, %struct.bstp_state** %16, align 8
  store %struct.bstp_state* %17, %struct.bstp_state** %6, align 8
  %18 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %19 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %18, i32 0, i32 8
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %7, align 8
  %21 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %22 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %164

26:                                               ; preds = %2
  %27 = bitcast %struct.ifmediareq* %8 to i8*
  %28 = call i32 @bzero(i8* %27, i32 8)
  %29 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32 (%struct.ifnet*, i32, i32)*, i32 (%struct.ifnet*, i32, i32)** %30, align 8
  %32 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %33 = load i32, i32* @SIOCGIFMEDIA, align 4
  %34 = ptrtoint %struct.ifmediareq* %8 to i32
  %35 = call i32 %31(%struct.ifnet* %32, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %37 = call i32 @BSTP_LOCK(%struct.bstp_state* %36)
  store i32 0, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %144

40:                                               ; preds = %26
  %41 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IFF_UP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %144

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFM_ACTIVE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %116

53:                                               ; preds = %47
  %54 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %55 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BSTP_PORT_AUTOPTP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %8, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFM_FDX, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  store i32 %67, i32* %11, align 4
  %68 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %69 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = xor i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %60
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %77 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  store i32 1, i32* %10, align 4
  br label %78

78:                                               ; preds = %74, %60
  br label %79

79:                                               ; preds = %78, %53
  %80 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %81 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BSTP_PORT_PNDCOST, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %79
  %87 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %88 = call i64 @bstp_calc_path_cost(%struct.bstp_port* %87)
  store i64 %88, i64* %12, align 8
  %89 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %90 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i64, i64* %12, align 8
  %96 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %97 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  store i32 1, i32* %10, align 4
  br label %98

98:                                               ; preds = %94, %86
  %99 = load i32, i32* @BSTP_PORT_PNDCOST, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %102 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %98, %79
  %106 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %107 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @BSTP_ROLE_DISABLED, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %113 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %114 = call i32 @bstp_enable_port(%struct.bstp_state* %112, %struct.bstp_port* %113)
  store i32 1, i32* %10, align 4
  br label %115

115:                                              ; preds = %111, %105
  br label %143

116:                                              ; preds = %47
  %117 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %118 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @BSTP_ROLE_DISABLED, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %116
  %123 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %124 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %125 = call i32 @bstp_disable_port(%struct.bstp_state* %123, %struct.bstp_port* %124)
  store i32 1, i32* %10, align 4
  %126 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %127 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @BSTP_PORT_ADMEDGE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %122
  %133 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %134 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @BSTP_PROTO_RSTP, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %140 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %139, i32 0, i32 5
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %138, %132, %122
  br label %142

142:                                              ; preds = %141, %116
  br label %143

143:                                              ; preds = %142, %115
  br label %155

144:                                              ; preds = %40, %26
  %145 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %146 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @BSTP_INFO_DISABLED, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %152 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %153 = call i32 @bstp_disable_port(%struct.bstp_state* %151, %struct.bstp_port* %152)
  store i32 1, i32* %10, align 4
  br label %154

154:                                              ; preds = %150, %144
  br label %155

155:                                              ; preds = %154, %143
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %160 = call i32 @bstp_assign_roles(%struct.bstp_state* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %163 = call i32 @BSTP_UNLOCK(%struct.bstp_state* %162)
  br label %164

164:                                              ; preds = %161, %25
  ret void
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @BSTP_LOCK(%struct.bstp_state*) #1

declare dso_local i64 @bstp_calc_path_cost(%struct.bstp_port*) #1

declare dso_local i32 @bstp_enable_port(%struct.bstp_state*, %struct.bstp_port*) #1

declare dso_local i32 @bstp_disable_port(%struct.bstp_state*, %struct.bstp_port*) #1

declare dso_local i32 @bstp_assign_roles(%struct.bstp_state*) #1

declare dso_local i32 @BSTP_UNLOCK(%struct.bstp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
