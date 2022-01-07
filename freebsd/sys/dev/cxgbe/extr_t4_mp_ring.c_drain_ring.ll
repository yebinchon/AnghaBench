; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_mp_ring.c_drain_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_mp_ring.c_drain_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ring = type { i32 (%struct.mp_ring*, i64, i64)*, i32, i32, i32, i32, i32 }
%union.ring_state = type { i64 }

@BUSY = common dso_local global i64 0, align 8
@IDLE = common dso_local global i64 0, align 8
@STALLED = common dso_local global i64 0, align 8
@ABDICATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_ring*, i64, i64, i32)* @drain_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_ring(%struct.mp_ring* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %union.ring_state, align 8
  %6 = alloca %struct.mp_ring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.ring_state, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = getelementptr inbounds %union.ring_state, %union.ring_state* %5, i32 0, i32 0
  store i64 %1, i64* %15, align 8
  store %struct.mp_ring* %0, %struct.mp_ring** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = bitcast %union.ring_state* %5 to i64*
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = bitcast %union.ring_state* %5 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %14, align 8
  %20 = bitcast %union.ring_state* %5 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BUSY, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @IDLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %36 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @counter_u64_add(i32 %37, i32 1)
  br label %39

39:                                               ; preds = %34, %4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %186, %121, %39
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %189

44:                                               ; preds = %40
  %45 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %46 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %45, i32 0, i32 0
  %47 = load i32 (%struct.mp_ring*, i64, i64)*, i32 (%struct.mp_ring*, i64, i64)** %46, align 8
  %48 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32 %47(%struct.mp_ring* %48, i64 %49, i64 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %100

54:                                               ; preds = %44
  %55 = call i32 (...) @critical_enter()
  %56 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %57 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = bitcast %union.ring_state* %5 to i32*
  store i32 %58, i32* %59, align 8
  br label %60

60:                                               ; preds = %68, %54
  %61 = bitcast %union.ring_state* %5 to i32*
  %62 = load i32, i32* %61, align 8
  %63 = bitcast %union.ring_state* %9 to i32*
  store i32 %62, i32* %63, align 8
  %64 = load i64, i64* %13, align 8
  %65 = bitcast %union.ring_state* %9 to i64*
  store i64 %64, i64* %65, align 8
  %66 = load i64, i64* @STALLED, align 8
  %67 = bitcast %union.ring_state* %9 to i64*
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %60
  %69 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %70 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %69, i32 0, i32 3
  %71 = bitcast %union.ring_state* %5 to i32*
  %72 = bitcast %union.ring_state* %9 to i32*
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @atomic_fcmpset_64(i32* %70, i32* %71, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %60, label %76

76:                                               ; preds = %68
  %77 = call i32 (...) @critical_exit()
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @STALLED, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %83 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @counter_u64_add(i32 %84, i32 1)
  br label %99

86:                                               ; preds = %76
  %87 = load i32, i32* %12, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %91 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @counter_u64_add(i32 %92, i32 1)
  %94 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %95 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @counter_u64_add(i32 %96, i32 1)
  br label %98

98:                                               ; preds = %89, %86
  br label %99

99:                                               ; preds = %98, %81
  br label %189

100:                                              ; preds = %44
  %101 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i64 @increment_idx(%struct.mp_ring* %101, i64 %102, i32 %103)
  store i64 %104, i64* %13, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %12, align 4
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %14, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %100
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 64
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %40

122:                                              ; preds = %117, %114, %100
  %123 = call i32 (...) @critical_enter()
  %124 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %125 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = bitcast %union.ring_state* %5 to i32*
  store i32 %126, i32* %127, align 8
  br label %128

128:                                              ; preds = %142, %122
  %129 = bitcast %union.ring_state* %5 to i32*
  %130 = load i32, i32* %129, align 8
  %131 = bitcast %union.ring_state* %9 to i32*
  store i32 %130, i32* %131, align 8
  %132 = load i64, i64* %13, align 8
  %133 = bitcast %union.ring_state* %9 to i64*
  store i64 %132, i64* %133, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp sge i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = getelementptr inbounds %union.ring_state, %union.ring_state* %9, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @state_to_flags(i64 %139, i32 %137)
  %141 = bitcast %union.ring_state* %9 to i64*
  store i64 %140, i64* %141, align 8
  br label %142

142:                                              ; preds = %128
  %143 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %144 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %143, i32 0, i32 3
  %145 = bitcast %union.ring_state* %5 to i32*
  %146 = bitcast %union.ring_state* %9 to i32*
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @atomic_fcmpset_acq_64(i32* %144, i32* %145, i32 %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %128, label %150

150:                                              ; preds = %142
  %151 = call i32 (...) @critical_exit()
  %152 = bitcast %union.ring_state* %9 to i64*
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @ABDICATED, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %158 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @counter_u64_add(i32 %159, i32 1)
  br label %161

161:                                              ; preds = %156, %150
  %162 = bitcast %union.ring_state* %9 to i64*
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @BUSY, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %186

166:                                              ; preds = %161
  %167 = bitcast %union.ring_state* %9 to i64*
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @STALLED, align 8
  %170 = icmp ne i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @MPASS(i32 %171)
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* @STALLED, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %166
  %177 = load i32, i32* %12, align 4
  %178 = icmp sgt i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @MPASS(i32 %179)
  %181 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %182 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @counter_u64_add(i32 %183, i32 1)
  br label %185

185:                                              ; preds = %176, %166
  br label %189

186:                                              ; preds = %161
  %187 = bitcast %union.ring_state* %9 to i64*
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %14, align 8
  store i32 0, i32* %11, align 4
  br label %40

189:                                              ; preds = %185, %99, %40
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i64 @atomic_fcmpset_64(i32*, i32*, i32) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i64 @increment_idx(%struct.mp_ring*, i64, i32) #1

declare dso_local i64 @state_to_flags(i64, i32) #1

declare dso_local i64 @atomic_fcmpset_acq_64(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
