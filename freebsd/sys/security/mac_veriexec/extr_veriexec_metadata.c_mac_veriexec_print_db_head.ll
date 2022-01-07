; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_metadata.c_mac_veriexec_print_db_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_metadata.c_mac_veriexec_print_db_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.veriexec_devhead = type { i32 }
%struct.veriexec_dev_list = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c" FS id: %ju\0A\00", align 1
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, %struct.veriexec_devhead*)* @mac_veriexec_print_db_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_veriexec_print_db_head(%struct.sbuf* %0, %struct.veriexec_devhead* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca %struct.veriexec_devhead*, align 8
  %5 = alloca %struct.veriexec_dev_list*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store %struct.veriexec_devhead* %1, %struct.veriexec_devhead** %4, align 8
  %6 = load %struct.veriexec_devhead*, %struct.veriexec_devhead** %4, align 8
  %7 = call %struct.veriexec_dev_list* @LIST_FIRST(%struct.veriexec_devhead* %6)
  store %struct.veriexec_dev_list* %7, %struct.veriexec_dev_list** %5, align 8
  br label %8

8:                                                ; preds = %21, %2
  %9 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %5, align 8
  %10 = icmp ne %struct.veriexec_dev_list* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %13 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %5, align 8
  %14 = getelementptr inbounds %struct.veriexec_dev_list, %struct.veriexec_dev_list* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @sbuf_printf(%struct.sbuf* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %19 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %5, align 8
  %20 = call i32 @mac_veriexec_print_db_dev_list(%struct.sbuf* %18, %struct.veriexec_dev_list* %19)
  br label %21

21:                                               ; preds = %11
  %22 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %5, align 8
  %23 = load i32, i32* @entries, align 4
  %24 = call %struct.veriexec_dev_list* @LIST_NEXT(%struct.veriexec_dev_list* %22, i32 %23)
  store %struct.veriexec_dev_list* %24, %struct.veriexec_dev_list** %5, align 8
  br label %8

25:                                               ; preds = %8
  ret void
}

declare dso_local %struct.veriexec_dev_list* @LIST_FIRST(%struct.veriexec_devhead*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @mac_veriexec_print_db_dev_list(%struct.sbuf*, %struct.veriexec_dev_list*) #1

declare dso_local %struct.veriexec_dev_list* @LIST_NEXT(%struct.veriexec_dev_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
