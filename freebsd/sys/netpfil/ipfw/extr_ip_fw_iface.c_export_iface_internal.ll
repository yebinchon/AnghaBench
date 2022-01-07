; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_export_iface_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_export_iface_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32 }
%struct.named_object = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.dump_iface_args = type { i32 }
%struct.ipfw_iface = type { i32, %struct.TYPE_3__, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"previously checked buffer is not enough\00", align 1
@IPFW_IFFLAG_RESOLVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.namedobj_instance*, %struct.named_object*, i8*)* @export_iface_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_iface_internal(%struct.namedobj_instance* %0, %struct.named_object* %1, i8* %2) #0 {
  %4 = alloca %struct.namedobj_instance*, align 8
  %5 = alloca %struct.named_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.dump_iface_args*, align 8
  %9 = alloca %struct.ipfw_iface*, align 8
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %4, align 8
  store %struct.named_object* %1, %struct.named_object** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.dump_iface_args*
  store %struct.dump_iface_args* %11, %struct.dump_iface_args** %8, align 8
  %12 = load %struct.dump_iface_args*, %struct.dump_iface_args** %8, align 8
  %13 = getelementptr inbounds %struct.dump_iface_args, %struct.dump_iface_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ipfw_get_sopt_space(i32 %14, i32 20)
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.named_object*, %struct.named_object** %5, align 8
  %22 = bitcast %struct.named_object* %21 to %struct.ipfw_iface*
  store %struct.ipfw_iface* %22, %struct.ipfw_iface** %9, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %27 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strlcpy(i32 %25, i32 %28, i32 4)
  %30 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %31 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load i32, i32* @IPFW_IFFLAG_RESOLVED, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %3
  %41 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %42 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %47 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  %53 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  ret i32 0
}

declare dso_local i64 @ipfw_get_sopt_space(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
