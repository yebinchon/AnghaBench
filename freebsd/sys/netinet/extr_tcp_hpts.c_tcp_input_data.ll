; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_input_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_input_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_hpts_entry = type { %struct.inpcb*, i32, i32 }
%struct.inpcb = type { i64, i32, i32, i32, i64, i32, i32 }
%struct.timeval = type { i32 }
%struct.tcpcb = type { i64, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 (i32, %struct.tcpcb*, i32)* }

@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@INP_FREED = common dso_local global i32 0, align 4
@INP_SUPPORTS_MBUFQ = common dso_local global i32 0, align 4
@HPTS_REMOVE_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_hpts_entry*, %struct.timeval*)* @tcp_input_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_input_data(%struct.tcp_hpts_entry* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.tcp_hpts_entry*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tcp_hpts_entry* %0, %struct.tcp_hpts_entry** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %12 = call i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry* %11)
  %13 = call i32 (...) @NET_EPOCH_ASSERT()
  br label %14

14:                                               ; preds = %180, %106, %70, %2
  %15 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %16 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %15, i32 0, i32 2
  %17 = call %struct.inpcb* @TAILQ_FIRST(i32* %16)
  store %struct.inpcb* %17, %struct.inpcb** %6, align 8
  %18 = icmp ne %struct.inpcb* %17, null
  br i1 %18, label %19, label %188

19:                                               ; preds = %14
  %20 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %21 = call i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry* %20)
  %22 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %23 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %24 = call i32 @hpts_sane_input_remove(%struct.tcp_hpts_entry* %22, %struct.inpcb* %23, i32 0)
  %25 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %26 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %31

30:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %33 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %34 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %33, i32 0, i32 0
  store %struct.inpcb* %32, %struct.inpcb** %34, align 8
  %35 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %36 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %39 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %41 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %40, i32 0, i32 1
  %42 = call i32 @mtx_unlock(i32* %41)
  %43 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %44 = call i32 @INP_WLOCK(%struct.inpcb* %43)
  %45 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @INP_TIMEWAIT, align 4
  %49 = load i32, i32* @INP_DROPPED, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %31
  %54 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %55 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @INP_FREED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %53, %31
  br label %61

61:                                               ; preds = %84, %60
  %62 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %63 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %62, i32 0, i32 0
  store %struct.inpcb* null, %struct.inpcb** %63, align 8
  %64 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %65 = call i64 @in_pcbrele_wlocked(%struct.inpcb* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %69 = call i32 @INP_WUNLOCK(%struct.inpcb* %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %72 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %71, i32 0, i32 1
  %73 = call i32 @mtx_lock(i32* %72)
  br label %14

74:                                               ; preds = %53
  %75 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %76 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %75)
  store %struct.tcpcb* %76, %struct.tcpcb** %5, align 8
  %77 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %78 = icmp eq %struct.tcpcb* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %81 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %74
  br label %61

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %85
  %89 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %90 = call i32 @tcp_drop_in_pkts(%struct.tcpcb* %89)
  %91 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call %struct.tcpcb* @tcp_drop(%struct.tcpcb* %91, i32 %92)
  store %struct.tcpcb* %93, %struct.tcpcb** %5, align 8
  %94 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %95 = icmp eq %struct.tcpcb* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %98 = call i32 @INP_WLOCK(%struct.inpcb* %97)
  br label %99

99:                                               ; preds = %96, %88
  %100 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %101 = call i64 @in_pcbrele_wlocked(%struct.inpcb* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %105 = call i32 @INP_WUNLOCK(%struct.inpcb* %104)
  br label %106

106:                                              ; preds = %103, %99
  %107 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %108 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %107, i32 0, i32 1
  %109 = call i32 @mtx_lock(i32* %108)
  br label %14

110:                                              ; preds = %85
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %115 = call i32 @tcp_set_hpts(%struct.inpcb* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %118 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %123 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @kern_prefetch(i32* %124, i32* %9)
  store i32 1, i32* %9, align 4
  br label %126

126:                                              ; preds = %121, %116
  %127 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %128 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @INP_SUPPORTS_MBUFQ, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %164

133:                                              ; preds = %126
  %134 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %135 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %164

138:                                              ; preds = %133
  %139 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %140 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %145 = load i32, i32* @HPTS_REMOVE_INPUT, align 4
  %146 = call i32 @tcp_hpts_remove(%struct.inpcb* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %138
  %148 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %149 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %148, i32 0, i32 1
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32 (i32, %struct.tcpcb*, i32)*, i32 (i32, %struct.tcpcb*, i32)** %151, align 8
  %153 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %154 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %157 = call i32 %152(i32 %155, %struct.tcpcb* %156, i32 0)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %147
  %161 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %162 = call i32 @INP_WLOCK(%struct.inpcb* %161)
  br label %163

163:                                              ; preds = %160, %147
  br label %173

164:                                              ; preds = %133, %126
  %165 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %166 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %171 = call i32 @tcp_drop_in_pkts(%struct.tcpcb* %170)
  br label %172

172:                                              ; preds = %169, %164
  br label %173

173:                                              ; preds = %172, %163
  %174 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %175 = call i64 @in_pcbrele_wlocked(%struct.inpcb* %174)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %179 = call i32 @INP_WUNLOCK(%struct.inpcb* %178)
  br label %180

180:                                              ; preds = %177, %173
  %181 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %182 = call i32 @INP_UNLOCK_ASSERT(%struct.inpcb* %181)
  %183 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %184 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %183, i32 0, i32 1
  %185 = call i32 @mtx_lock(i32* %184)
  %186 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %187 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %186, i32 0, i32 0
  store %struct.inpcb* null, %struct.inpcb** %187, align 8
  br label %14

188:                                              ; preds = %14
  ret void
}

declare dso_local i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry*) #1

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local %struct.inpcb* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @hpts_sane_input_remove(%struct.tcp_hpts_entry*, %struct.inpcb*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i64 @in_pcbrele_wlocked(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @tcp_drop_in_pkts(%struct.tcpcb*) #1

declare dso_local %struct.tcpcb* @tcp_drop(%struct.tcpcb*, i32) #1

declare dso_local i32 @tcp_set_hpts(%struct.inpcb*) #1

declare dso_local i32 @kern_prefetch(i32*, i32*) #1

declare dso_local i32 @tcp_hpts_remove(%struct.inpcb*, i32) #1

declare dso_local i32 @INP_UNLOCK_ASSERT(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
