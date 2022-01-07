; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_received_bpdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_received_bpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i32 }
%struct.bstp_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bstp_config_unit = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BSTP_INFO_RECEIVED = common dso_local global i32 0, align 4
@BSTP_MIN_HELLO_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_state*, %struct.bstp_port*, %struct.bstp_config_unit*)* @bstp_received_bpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_received_bpdu(%struct.bstp_state* %0, %struct.bstp_port* %1, %struct.bstp_config_unit* %2) #0 {
  %4 = alloca %struct.bstp_state*, align 8
  %5 = alloca %struct.bstp_port*, align 8
  %6 = alloca %struct.bstp_config_unit*, align 8
  %7 = alloca i32, align 4
  store %struct.bstp_state* %0, %struct.bstp_state** %4, align 8
  store %struct.bstp_port* %1, %struct.bstp_port** %5, align 8
  store %struct.bstp_config_unit* %2, %struct.bstp_config_unit** %6, align 8
  %8 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %9 = call i32 @BSTP_LOCK_ASSERT(%struct.bstp_state* %8)
  %10 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %11 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %14 [
    i32 133, label %13
    i32 134, label %13
  ]

13:                                               ; preds = %3, %3
  br label %193

14:                                               ; preds = %3
  %15 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %16 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %17 = call i32 @bstp_pdu_rcvtype(%struct.bstp_port* %15, %struct.bstp_config_unit* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %189 [
    i32 128, label %19
    i32 129, label %110
    i32 132, label %142
    i32 131, label %153
    i32 130, label %188
  ]

19:                                               ; preds = %14
  %20 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %21 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %23 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %25 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %24, i32 0, i32 5
  store i32 0, i32* %25, align 4
  %26 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %27 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %32 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %37 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %30, %19
  %39 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %40 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %45 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %48 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %53 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %52, i32 0, i32 4
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %56 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %61 = load i32, i32* @BSTP_INFO_RECEIVED, align 4
  %62 = call i32 @bstp_pdu_bettersame(%struct.bstp_port* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %66 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %65, i32 0, i32 12
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %59, %54
  %68 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %69 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %72 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %71, i32 0, i32 11
  store i32 %70, i32* %72, align 4
  %73 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %74 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %77 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %76, i32 0, i32 10
  store i32 %75, i32* %77, align 4
  %78 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %79 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %82 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %84 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %87 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 4
  %88 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %89 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BSTP_MIN_HELLO_TIME, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %67
  %94 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %95 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  br label %99

97:                                               ; preds = %67
  %98 = load i32, i32* @BSTP_MIN_HELLO_TIME, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = phi i32 [ %96, %93 ], [ %98, %97 ]
  %101 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %102 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %104 = call i32 @bstp_set_timer_msgage(%struct.bstp_port* %103)
  %105 = load i32, i32* @BSTP_INFO_RECEIVED, align 4
  %106 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %107 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %109 = call i32 @bstp_assign_roles(%struct.bstp_state* %108)
  br label %189

110:                                              ; preds = %14
  %111 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %112 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %117 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %122 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %121, i32 0, i32 2
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %115, %110
  %124 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %125 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %130 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %129, i32 0, i32 3
  store i32 1, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %123
  %132 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %133 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %138 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %137, i32 0, i32 4
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %131
  %140 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %141 = call i32 @bstp_set_timer_msgage(%struct.bstp_port* %140)
  br label %189

142:                                              ; preds = %14
  %143 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %144 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %149 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  %150 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %151 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %150, i32 0, i32 5
  store i32 0, i32* %151, align 4
  br label %152

152:                                              ; preds = %147, %142
  br label %189

153:                                              ; preds = %14
  %154 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %155 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %160 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %165 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %164, i32 0, i32 1
  store i32 1, i32* %165, align 4
  %166 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %167 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %166, i32 0, i32 5
  store i32 0, i32* %167, align 4
  br label %171

168:                                              ; preds = %158, %153
  %169 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %170 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %169, i32 0, i32 1
  store i32 0, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %163
  %172 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %173 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %178 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %177, i32 0, i32 3
  store i32 1, i32* %178, align 4
  br label %179

179:                                              ; preds = %176, %171
  %180 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %181 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %186 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %185, i32 0, i32 4
  store i32 1, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %179
  br label %189

188:                                              ; preds = %14
  br label %193

189:                                              ; preds = %14, %187, %152, %139, %99
  %190 = load %struct.bstp_state*, %struct.bstp_state** %4, align 8
  %191 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %192 = call i32 @bstp_update_state(%struct.bstp_state* %190, %struct.bstp_port* %191)
  br label %193

193:                                              ; preds = %189, %188, %13
  ret void
}

declare dso_local i32 @BSTP_LOCK_ASSERT(%struct.bstp_state*) #1

declare dso_local i32 @bstp_pdu_rcvtype(%struct.bstp_port*, %struct.bstp_config_unit*) #1

declare dso_local i32 @bstp_pdu_bettersame(%struct.bstp_port*, i32) #1

declare dso_local i32 @bstp_set_timer_msgage(%struct.bstp_port*) #1

declare dso_local i32 @bstp_assign_roles(%struct.bstp_state*) #1

declare dso_local i32 @bstp_update_state(%struct.bstp_state*, %struct.bstp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
