; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_subr_ipsec.c_xform_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_subr_ipsec.c_xform_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xformsw = type { i32 }

@chain = common dso_local global i32 0, align 4
@IPSEC_MODULE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xform_detach(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xformsw*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.xformsw*
  store %struct.xformsw* %5, %struct.xformsw** %3, align 8
  %6 = call i32 (...) @XFORMS_LOCK()
  %7 = load %struct.xformsw*, %struct.xformsw** %3, align 8
  %8 = load i32, i32* @chain, align 4
  %9 = call i32 @LIST_REMOVE(%struct.xformsw* %7, i32 %8)
  %10 = call i32 (...) @XFORMS_UNLOCK()
  %11 = load %struct.xformsw*, %struct.xformsw** %3, align 8
  %12 = call i32 @key_delete_xform(%struct.xformsw* %11)
  %13 = load %struct.xformsw*, %struct.xformsw** %3, align 8
  %14 = getelementptr inbounds %struct.xformsw, %struct.xformsw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IPSEC_MODULE_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.xformsw*, %struct.xformsw** %3, align 8
  %21 = getelementptr inbounds %struct.xformsw, %struct.xformsw* %20, i32 0, i32 0
  %22 = call i32 @ipsec_kmod_drain(i32* %21)
  br label %23

23:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @XFORMS_LOCK(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.xformsw*, i32) #1

declare dso_local i32 @XFORMS_UNLOCK(...) #1

declare dso_local i32 @key_delete_xform(%struct.xformsw*) #1

declare dso_local i32 @ipsec_kmod_drain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
