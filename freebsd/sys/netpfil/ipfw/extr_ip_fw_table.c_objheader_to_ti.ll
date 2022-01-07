; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_objheader_to_ti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_objheader_to_ti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ipfw_obj_header = type { i32 }
%struct.tid_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._ipfw_obj_header*, %struct.tid_info*)* @objheader_to_ti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @objheader_to_ti(%struct._ipfw_obj_header* %0, %struct.tid_info* %1) #0 {
  %3 = alloca %struct._ipfw_obj_header*, align 8
  %4 = alloca %struct.tid_info*, align 8
  store %struct._ipfw_obj_header* %0, %struct._ipfw_obj_header** %3, align 8
  store %struct.tid_info* %1, %struct.tid_info** %4, align 8
  %5 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %3, align 8
  %6 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %5, i32 0, i32 0
  %7 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %8 = call i32 @ntlv_to_ti(i32* %6, %struct.tid_info* %7)
  ret void
}

declare dso_local i32 @ntlv_to_ti(i32*, %struct.tid_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
