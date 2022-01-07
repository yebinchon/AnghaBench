; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_handle_upcall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_handle_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.xenisrc = type { i64, i32 }
%struct.trapframe = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.xen_intr_pcpu_data = type { i64, i64, i32* }

@cpuid = common dso_local global i32 0, align 4
@xen_intr_pcpu = common dso_local global i32 0, align 4
@HYPERVISOR_shared_info = common dso_local global %struct.TYPE_7__* null, align 8
@vcpu_info = common dso_local global i32 0, align 4
@xen_vector_callback_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Fired PCI event callback on wrong CPU\00", align 1
@LONG_BIT = common dso_local global i64 0, align 8
@xen_intr_port_to_isrc = common dso_local global %struct.xenisrc** null, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Received unexpected event on vCPU#%d, event bound to vCPU#%d\00", align 1
@xen_evtchn_needs_ack = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_intr_handle_upcall(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xenisrc*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.xen_intr_pcpu_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %15 = call i32 (...) @critical_enter()
  %16 = load i32, i32* @cpuid, align 4
  %17 = call i64 @PCPU_GET(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* @xen_intr_pcpu, align 4
  %19 = call %struct.xen_intr_pcpu_data* @DPCPU_PTR(i32 %18)
  store %struct.xen_intr_pcpu_data* %19, %struct.xen_intr_pcpu_data** %12, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @HYPERVISOR_shared_info, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %10, align 8
  %21 = load i32, i32* @vcpu_info, align 4
  %22 = call %struct.TYPE_6__* @DPCPU_GET(i32 %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %11, align 8
  %23 = call i64 (...) @xen_hvm_domain()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load i32, i32* @xen_vector_callback_enabled, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %25, %1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i64 @atomic_readandclear_long(i32* %37)
  store i64 %38, i64* %13, align 8
  %39 = load %struct.xen_intr_pcpu_data*, %struct.xen_intr_pcpu_data** %12, align 8
  %40 = getelementptr inbounds %struct.xen_intr_pcpu_data, %struct.xen_intr_pcpu_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %3, align 8
  %42 = load %struct.xen_intr_pcpu_data*, %struct.xen_intr_pcpu_data** %12, align 8
  %43 = getelementptr inbounds %struct.xen_intr_pcpu_data, %struct.xen_intr_pcpu_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %4, align 8
  %45 = load %struct.xen_intr_pcpu_data*, %struct.xen_intr_pcpu_data** %12, align 8
  %46 = getelementptr inbounds %struct.xen_intr_pcpu_data, %struct.xen_intr_pcpu_data* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %161, %64, %33
  %51 = load i64, i64* %13, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %162

53:                                               ; preds = %50
  %54 = load i64, i64* %3, align 8
  %55 = add nsw i64 %54, 1
  %56 = load i64, i64* @LONG_BIT, align 8
  %57 = srem i64 %55, %56
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %3, align 8
  %60 = shl i64 -1, %59
  %61 = and i64 %58, %60
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load i64, i64* @LONG_BIT, align 8
  %66 = sub nsw i64 %65, 1
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* @LONG_BIT, align 8
  %68 = sub nsw i64 %67, 1
  store i64 %68, i64* %4, align 8
  br label %50

69:                                               ; preds = %53
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @ffsl(i64 %70)
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %143, %69
  %75 = load %struct.xen_intr_pcpu_data*, %struct.xen_intr_pcpu_data** %12, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %77 = load i64, i64* %3, align 8
  %78 = call i64 @xen_intr_active_ports(%struct.xen_intr_pcpu_data* %75, %struct.TYPE_7__* %76, i64 %77)
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %4, align 8
  %80 = add nsw i64 %79, 1
  %81 = load i64, i64* @LONG_BIT, align 8
  %82 = srem i64 %80, %81
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %4, align 8
  %85 = shl i64 -1, %84
  %86 = and i64 %83, %85
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i64, i64* @LONG_BIT, align 8
  %91 = sub nsw i64 %90, 1
  store i64 %91, i64* %4, align 8
  br label %148

92:                                               ; preds = %74
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @ffsl(i64 %93)
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %4, align 8
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* @LONG_BIT, align 8
  %99 = mul nsw i64 %97, %98
  %100 = load i64, i64* %4, align 8
  %101 = add nsw i64 %99, %100
  store i64 %101, i64* %5, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = call i32 @synch_clear_bit(i64 %102, i32* %106)
  %108 = load %struct.xenisrc**, %struct.xenisrc*** @xen_intr_port_to_isrc, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds %struct.xenisrc*, %struct.xenisrc** %108, i64 %109
  %111 = load %struct.xenisrc*, %struct.xenisrc** %110, align 8
  store %struct.xenisrc* %111, %struct.xenisrc** %9, align 8
  %112 = load %struct.xenisrc*, %struct.xenisrc** %9, align 8
  %113 = icmp eq %struct.xenisrc* %112, null
  %114 = zext i1 %113 to i32
  %115 = call i64 @__predict_false(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %92
  br label %143

118:                                              ; preds = %92
  %119 = load %struct.xenisrc*, %struct.xenisrc** %9, align 8
  %120 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @cpuid, align 4
  %123 = call i64 @PCPU_GET(i32 %122)
  %124 = icmp eq i64 %121, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* @cpuid, align 4
  %127 = call i64 @PCPU_GET(i32 %126)
  %128 = load %struct.xenisrc*, %struct.xenisrc** %9, align 8
  %129 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @KASSERT(i32 %125, i8* %131)
  %133 = load %struct.xenisrc*, %struct.xenisrc** %9, align 8
  %134 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %133, i32 0, i32 1
  %135 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %136 = call i32 @intr_execute_handlers(i32* %134, %struct.trapframe* %135)
  %137 = load i64, i64* %3, align 8
  %138 = load %struct.xen_intr_pcpu_data*, %struct.xen_intr_pcpu_data** %12, align 8
  %139 = getelementptr inbounds %struct.xen_intr_pcpu_data, %struct.xen_intr_pcpu_data* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i64, i64* %4, align 8
  %141 = load %struct.xen_intr_pcpu_data*, %struct.xen_intr_pcpu_data** %12, align 8
  %142 = getelementptr inbounds %struct.xen_intr_pcpu_data, %struct.xen_intr_pcpu_data* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %118, %117
  %144 = load i64, i64* %4, align 8
  %145 = load i64, i64* @LONG_BIT, align 8
  %146 = sub nsw i64 %145, 1
  %147 = icmp ne i64 %144, %146
  br i1 %147, label %74, label %148

148:                                              ; preds = %143, %89
  %149 = load %struct.xen_intr_pcpu_data*, %struct.xen_intr_pcpu_data** %12, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %151 = load i64, i64* %3, align 8
  %152 = call i64 @xen_intr_active_ports(%struct.xen_intr_pcpu_data* %149, %struct.TYPE_7__* %150, i64 %151)
  store i64 %152, i64* %14, align 8
  %153 = load i64, i64* %14, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load i64, i64* %3, align 8
  %157 = shl i64 1, %156
  %158 = xor i64 %157, -1
  %159 = load i64, i64* %13, align 8
  %160 = and i64 %159, %158
  store i64 %160, i64* %13, align 8
  br label %161

161:                                              ; preds = %155, %148
  br label %50

162:                                              ; preds = %50
  %163 = load i64, i64* @xen_evtchn_needs_ack, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call i32 (...) @lapic_eoi()
  br label %167

167:                                              ; preds = %165, %162
  %168 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local %struct.xen_intr_pcpu_data* @DPCPU_PTR(i32) #1

declare dso_local %struct.TYPE_6__* @DPCPU_GET(i32) #1

declare dso_local i64 @xen_hvm_domain(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atomic_readandclear_long(i32*) #1

declare dso_local i32 @ffsl(i64) #1

declare dso_local i64 @xen_intr_active_ports(%struct.xen_intr_pcpu_data*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @synch_clear_bit(i64, i32*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @intr_execute_handlers(i32*, %struct.trapframe*) #1

declare dso_local i32 @lapic_eoi(...) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
