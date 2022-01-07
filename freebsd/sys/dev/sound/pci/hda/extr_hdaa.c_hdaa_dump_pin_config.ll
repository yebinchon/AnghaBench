; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_pin_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_pin_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_widget = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"%2d %08x %-2d %-2d %-13s %-5s %-7s %-10s %-7s %d%s\0A\00", align 1
@HDA_DEVS = common dso_local global i32* null, align 8
@HDA_CONNS = common dso_local global i32* null, align 8
@HDA_CONNECTORS = common dso_local global i32* null, align 8
@HDA_LOCS = common dso_local global i32* null, align 8
@HDA_COLORS = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" DISA\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_widget*, i32)* @hdaa_dump_pin_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_pin_config(%struct.hdaa_widget* %0, i32 %1) #0 {
  %3 = alloca %struct.hdaa_widget*, align 8
  %4 = alloca i32, align 4
  store %struct.hdaa_widget* %0, %struct.hdaa_widget** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %6 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %11 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @HDA_CONFIG_DEFAULTCONF_ASSOCIATION(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @HDA_CONFIG_DEFAULTCONF_SEQUENCE(i32 %16)
  %18 = load i32*, i32** @HDA_DEVS, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @HDA_CONFIG_DEFAULTCONF_DEVICE(i32 %19)
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @HDA_CONNS, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY(i32 %24)
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @HDA_CONNECTORS, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @HDA_CONFIG_DEFAULTCONF_CONNECTION_TYPE(i32 %29)
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @HDA_LOCS, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @HDA_CONFIG_DEFAULTCONF_LOCATION(i32 %34)
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @HDA_COLORS, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @HDA_CONFIG_DEFAULTCONF_COLOR(i32 %39)
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @HDA_CONFIG_DEFAULTCONF_MISC(i32 %43)
  %45 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %46 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %51 = call i32 @device_printf(i32 %9, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %15, i32 %17, i32 %22, i32 %27, i32 %32, i32 %37, i32 %42, i32 %44, i8* %50)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @HDA_CONFIG_DEFAULTCONF_ASSOCIATION(i32) #1

declare dso_local i32 @HDA_CONFIG_DEFAULTCONF_SEQUENCE(i32) #1

declare dso_local i64 @HDA_CONFIG_DEFAULTCONF_DEVICE(i32) #1

declare dso_local i64 @HDA_CONFIG_DEFAULTCONF_CONNECTIVITY(i32) #1

declare dso_local i64 @HDA_CONFIG_DEFAULTCONF_CONNECTION_TYPE(i32) #1

declare dso_local i64 @HDA_CONFIG_DEFAULTCONF_LOCATION(i32) #1

declare dso_local i64 @HDA_CONFIG_DEFAULTCONF_COLOR(i32) #1

declare dso_local i32 @HDA_CONFIG_DEFAULTCONF_MISC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
