; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_mp_ring.c_mp_ring_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_mp_ring.c_mp_ring_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ring = type { i32, i32, i32, i32*, i32 }
%union.ring_state = type { i64 }

@IDLE = common dso_local global i64 0, align 8
@STALLED = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@BUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_ring_enqueue(%struct.mp_ring* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_ring*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ring_state, align 8
  %11 = alloca %union.ring_state, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mp_ring* %0, %struct.mp_ring** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i8**, i8*** %7, align 8
  %16 = icmp ne i8** %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @MPASS(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @MPASS(i32 %21)
  %23 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %24 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %union.ring_state* %10 to i32*
  store i32 %25, i32* %26, align 8
  br label %27

27:                                               ; preds = %74, %4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %30 = getelementptr inbounds %union.ring_state, %union.ring_state* %10, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @space_available(%struct.mp_ring* %29, i64 %31)
  %33 = icmp sge i32 %28, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %27
  %35 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %36 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @counter_u64_add(i32 %37, i32 %38)
  %40 = bitcast %union.ring_state* %10 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IDLE, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @MPASS(i32 %44)
  %46 = bitcast %union.ring_state* %10 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @STALLED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %34
  %51 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %52 = call i32 @mp_ring_check_drainage(%struct.mp_ring* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %34
  %54 = load i32, i32* @ENOBUFS, align 4
  store i32 %54, i32* %5, align 4
  br label %162

55:                                               ; preds = %27
  %56 = bitcast %union.ring_state* %10 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = bitcast %union.ring_state* %11 to i32*
  store i32 %57, i32* %58, align 8
  %59 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %60 = bitcast %union.ring_state* %10 to i32*
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @increment_idx(%struct.mp_ring* %59, i32 %61, i32 %62)
  %64 = bitcast %union.ring_state* %11 to i32*
  store i32 %63, i32* %64, align 8
  %65 = call i32 (...) @critical_enter()
  %66 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %67 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %66, i32 0, i32 2
  %68 = bitcast %union.ring_state* %10 to i32*
  %69 = bitcast %union.ring_state* %11 to i32*
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @atomic_fcmpset_64(i32* %67, i32* %68, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %55
  br label %77

74:                                               ; preds = %55
  %75 = call i32 (...) @critical_exit()
  %76 = call i32 (...) @cpu_spinwait()
  br label %27

77:                                               ; preds = %73
  %78 = bitcast %union.ring_state* %10 to i32*
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %12, align 4
  %80 = bitcast %union.ring_state* %11 to i32*
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %87, %77
  %83 = bitcast %union.ring_state* %11 to i32*
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = call i32 (...) @cpu_spinwait()
  %89 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %90 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = bitcast %union.ring_state* %11 to i32*
  store i32 %91, i32* %92, align 8
  br label %82

93:                                               ; preds = %82
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %117, %93
  %96 = load i8**, i8*** %7, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %7, align 8
  %98 = load i8*, i8** %96, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %101 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  %108 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %109 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %107, %110
  %112 = zext i1 %111 to i32
  %113 = call i64 @__predict_false(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %95
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %95, label %121

121:                                              ; preds = %117
  %122 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %123 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = bitcast %union.ring_state* %10 to i32*
  store i32 %124, i32* %125, align 8
  br label %126

126:                                              ; preds = %134, %121
  %127 = bitcast %union.ring_state* %10 to i32*
  %128 = load i32, i32* %127, align 8
  %129 = bitcast %union.ring_state* %11 to i32*
  store i32 %128, i32* %129, align 8
  %130 = load i32, i32* %13, align 4
  %131 = bitcast %union.ring_state* %11 to i32*
  store i32 %130, i32* %131, align 8
  %132 = load i64, i64* @BUSY, align 8
  %133 = bitcast %union.ring_state* %11 to i64*
  store i64 %132, i64* %133, align 8
  br label %134

134:                                              ; preds = %126
  %135 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %136 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %135, i32 0, i32 2
  %137 = bitcast %union.ring_state* %10 to i32*
  %138 = bitcast %union.ring_state* %11 to i32*
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @atomic_fcmpset_rel_64(i32* %136, i32* %137, i32 %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %126, label %142

142:                                              ; preds = %134
  %143 = call i32 (...) @critical_exit()
  %144 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %145 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @counter_u64_add(i32 %146, i32 %147)
  %149 = bitcast %union.ring_state* %10 to i64*
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @BUSY, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %142
  %154 = load %struct.mp_ring*, %struct.mp_ring** %6, align 8
  %155 = bitcast %union.ring_state* %10 to i64*
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = getelementptr inbounds %union.ring_state, %union.ring_state* %11, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @drain_ring(%struct.mp_ring* %154, i64 %159, i64 %156, i32 %157)
  br label %161

161:                                              ; preds = %153, %142
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %53
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @space_available(%struct.mp_ring*, i64) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @mp_ring_check_drainage(%struct.mp_ring*, i32) #1

declare dso_local i32 @increment_idx(%struct.mp_ring*, i32, i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i64 @atomic_fcmpset_64(i32*, i32*, i32) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @atomic_fcmpset_rel_64(i32*, i32*, i32) #1

declare dso_local i32 @drain_ring(%struct.mp_ring*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
