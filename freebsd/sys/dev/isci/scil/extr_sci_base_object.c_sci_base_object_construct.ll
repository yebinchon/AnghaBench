; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sci_base_object.c_sci_base_object_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sci_base_object.c_sci_base_object_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, %struct.SCI_BASE_LOGGER* }
%struct.SCI_BASE_LOGGER = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_base_object_construct(%struct.TYPE_3__* %0, %struct.SCI_BASE_LOGGER* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.SCI_BASE_LOGGER*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.SCI_BASE_LOGGER* %1, %struct.SCI_BASE_LOGGER** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32* null, i32** %6, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
