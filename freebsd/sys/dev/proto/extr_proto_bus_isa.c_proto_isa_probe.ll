; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_bus_isa.c_proto_isa_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_bus_isa.c_proto_isa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.resource = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s:%#jx\00", align 1
@proto_isa_prefix = common dso_local global i32 0, align 4
@proto_isa_devnames = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @proto_isa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_isa_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = call %struct.resource* @bus_alloc_resource_any(i32 %9, i32 %10, i32* %6, i32 %11)
  store %struct.resource* %12, %struct.resource** %5, align 8
  %13 = load %struct.resource*, %struct.resource** %5, align 8
  %14 = icmp eq %struct.resource* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call %struct.resource* @bus_alloc_resource_any(i32 %17, i32 %18, i32* %6, i32 %19)
  store %struct.resource* %20, %struct.resource** %5, align 8
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = icmp eq %struct.resource* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @ENODEV, align 4
  store i32 %25, i32* %2, align 4
  br label %49

26:                                               ; preds = %21
  %27 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %27, %struct.sbuf** %4, align 8
  %28 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %29 = load i32, i32* @proto_isa_prefix, align 4
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = call i32 @rman_get_start(%struct.resource* %30)
  %32 = call i32 @sbuf_printf(%struct.sbuf* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %34 = call i32 @sbuf_finish(%struct.sbuf* %33)
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %37 = call i32 @sbuf_data(%struct.sbuf* %36)
  %38 = call i32 @device_set_desc_copy(i32 %35, i32 %37)
  %39 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %40 = call i32 @sbuf_delete(%struct.sbuf* %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.resource*, %struct.resource** %5, align 8
  %45 = call i32 @bus_release_resource(i32 %41, i32 %42, i32 %43, %struct.resource* %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @proto_isa_prefix, align 4
  %48 = call i32 @proto_probe(i32 %46, i32 %47, i32* @proto_isa_devnames)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %26, %24
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @device_set_desc_copy(i32, i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @proto_probe(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
