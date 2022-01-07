; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_mp_ring.c_ifmp_ring_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_mp_ring.c_ifmp_ring_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmp_ring = type { i32, i32, i32, i32*, i32 }
%union.ring_state = type { i64 }

@IDLE = common dso_local global i64 0, align 8
@STALLED = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@ABDICATED = common dso_local global i64 0, align 8
@BUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifmp_ring_enqueue(%struct.ifmp_ring* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifmp_ring*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.ring_state, align 8
  %13 = alloca %union.ring_state, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ifmp_ring* %0, %struct.ifmp_ring** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i8**, i8*** %8, align 8
  %18 = icmp ne i8** %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @MPASS(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @MPASS(i32 %23)
  %25 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %26 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = bitcast %union.ring_state* %12 to i32*
  store i32 %27, i32* %28, align 8
  br label %29

29:                                               ; preds = %76, %5
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %32 = getelementptr inbounds %union.ring_state, %union.ring_state* %12, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @space_available(%struct.ifmp_ring* %31, i64 %33)
  %35 = icmp sge i32 %30, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %38 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @counter_u64_add(i32 %39, i32 %40)
  %42 = bitcast %union.ring_state* %12 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IDLE, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @MPASS(i32 %46)
  %48 = bitcast %union.ring_state* %12 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @STALLED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %54 = call i32 @ifmp_ring_check_drainage(%struct.ifmp_ring* %53, i32 0)
  br label %55

55:                                               ; preds = %52, %36
  %56 = load i32, i32* @ENOBUFS, align 4
  store i32 %56, i32* %6, align 4
  br label %181

57:                                               ; preds = %29
  %58 = bitcast %union.ring_state* %12 to i32*
  %59 = load i32, i32* %58, align 8
  %60 = bitcast %union.ring_state* %13 to i32*
  store i32 %59, i32* %60, align 8
  %61 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %62 = bitcast %union.ring_state* %12 to i32*
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @increment_idx(%struct.ifmp_ring* %61, i32 %63, i32 %64)
  %66 = bitcast %union.ring_state* %13 to i32*
  store i32 %65, i32* %66, align 8
  %67 = call i32 (...) @critical_enter()
  %68 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %69 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %68, i32 0, i32 2
  %70 = bitcast %union.ring_state* %12 to i32*
  %71 = bitcast %union.ring_state* %13 to i32*
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @atomic_fcmpset_64(i32* %69, i32* %70, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %57
  br label %79

76:                                               ; preds = %57
  %77 = call i32 (...) @critical_exit()
  %78 = call i32 (...) @cpu_spinwait()
  br label %29

79:                                               ; preds = %75
  %80 = bitcast %union.ring_state* %12 to i32*
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %14, align 4
  %82 = bitcast %union.ring_state* %13 to i32*
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %89, %79
  %85 = bitcast %union.ring_state* %13 to i32*
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = call i32 (...) @cpu_spinwait()
  %91 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %92 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = bitcast %union.ring_state* %13 to i32*
  store i32 %93, i32* %94, align 8
  br label %84

95:                                               ; preds = %84
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %119, %95
  %98 = load i8**, i8*** %8, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i32 1
  store i8** %99, i8*** %8, align 8
  %100 = load i8*, i8** %98, align 8
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %103 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %16, align 4
  %110 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %111 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %109, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @__predict_false(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %97
  store i32 0, i32* %16, align 4
  br label %118

118:                                              ; preds = %117, %97
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %97, label %123

123:                                              ; preds = %119
  %124 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %125 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = bitcast %union.ring_state* %12 to i32*
  store i32 %126, i32* %127, align 8
  br label %128

128:                                              ; preds = %149, %123
  %129 = bitcast %union.ring_state* %12 to i32*
  %130 = load i32, i32* %129, align 8
  %131 = bitcast %union.ring_state* %13 to i32*
  store i32 %130, i32* %131, align 8
  %132 = load i32, i32* %15, align 4
  %133 = bitcast %union.ring_state* %13 to i32*
  store i32 %132, i32* %133, align 8
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %128
  %137 = bitcast %union.ring_state* %12 to i64*
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @IDLE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i64, i64* @ABDICATED, align 8
  %143 = bitcast %union.ring_state* %13 to i64*
  store i64 %142, i64* %143, align 8
  br label %144

144:                                              ; preds = %141, %136
  br label %148

145:                                              ; preds = %128
  %146 = load i64, i64* @BUSY, align 8
  %147 = bitcast %union.ring_state* %13 to i64*
  store i64 %146, i64* %147, align 8
  br label %148

148:                                              ; preds = %145, %144
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %151 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %150, i32 0, i32 2
  %152 = bitcast %union.ring_state* %12 to i32*
  %153 = bitcast %union.ring_state* %13 to i32*
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @atomic_fcmpset_rel_64(i32* %151, i32* %152, i32 %154)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %128, label %157

157:                                              ; preds = %149
  %158 = call i32 (...) @critical_exit()
  %159 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %160 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @counter_u64_add(i32 %161, i32 %162)
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %180, label %166

166:                                              ; preds = %157
  %167 = bitcast %union.ring_state* %12 to i64*
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @BUSY, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load %struct.ifmp_ring*, %struct.ifmp_ring** %7, align 8
  %173 = bitcast %union.ring_state* %12 to i64*
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = getelementptr inbounds %union.ring_state, %union.ring_state* %13, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @drain_ring_lockless(%struct.ifmp_ring* %172, i64 %177, i64 %174, i32 %175)
  br label %179

179:                                              ; preds = %171, %166
  br label %180

180:                                              ; preds = %179, %157
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %180, %55
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @space_available(%struct.ifmp_ring*, i64) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @ifmp_ring_check_drainage(%struct.ifmp_ring*, i32) #1

declare dso_local i32 @increment_idx(%struct.ifmp_ring*, i32, i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i64 @atomic_fcmpset_64(i32*, i32*, i32) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @atomic_fcmpset_rel_64(i32*, i32*, i32) #1

declare dso_local i32 @drain_ring_lockless(%struct.ifmp_ring*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
