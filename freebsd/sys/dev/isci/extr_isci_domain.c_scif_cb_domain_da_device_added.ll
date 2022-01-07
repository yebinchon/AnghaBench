; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_domain.c_scif_cb_domain_da_device_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_domain.c_scif_cb_domain_da_device_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_REMOTE_DEVICE = type { %struct.ISCI_DOMAIN*, i32 }
%struct.ISCI_DOMAIN = type { %struct.ISCI_REMOTE_DEVICE* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cb_domain_da_device_added(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  %10 = alloca %struct.ISCI_DOMAIN*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @sci_object_get_association(i32 %11)
  %13 = inttoptr i64 %12 to %struct.ISCI_DOMAIN*
  store %struct.ISCI_DOMAIN* %13, %struct.ISCI_DOMAIN** %10, align 8
  %14 = load %struct.ISCI_DOMAIN*, %struct.ISCI_DOMAIN** %10, align 8
  %15 = getelementptr inbounds %struct.ISCI_DOMAIN, %struct.ISCI_DOMAIN* %14, i32 0, i32 0
  %16 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %15, align 8
  store %struct.ISCI_REMOTE_DEVICE* %16, %struct.ISCI_REMOTE_DEVICE** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %9, align 8
  %19 = bitcast %struct.ISCI_REMOTE_DEVICE* %18 to i32*
  %20 = getelementptr inbounds i32, i32* %19, i64 16
  %21 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %9, align 8
  %22 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %21, i32 0, i32 1
  %23 = call i32 @scif_remote_device_construct(i32 %17, i32* %20, i32* %22)
  %24 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %9, align 8
  %25 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %9, align 8
  %28 = call i32 @sci_object_set_association(i32 %26, %struct.ISCI_REMOTE_DEVICE* %27)
  %29 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %9, align 8
  %30 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @scif_remote_device_da_construct(i32 %31, i32* %32, i32* %33)
  %35 = load %struct.ISCI_DOMAIN*, %struct.ISCI_DOMAIN** %10, align 8
  %36 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %9, align 8
  %37 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %36, i32 0, i32 0
  store %struct.ISCI_DOMAIN* %35, %struct.ISCI_DOMAIN** %37, align 8
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i32 @scif_remote_device_construct(i32, i32*, i32*) #1

declare dso_local i32 @sci_object_set_association(i32, %struct.ISCI_REMOTE_DEVICE*) #1

declare dso_local i32 @scif_remote_device_da_construct(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
