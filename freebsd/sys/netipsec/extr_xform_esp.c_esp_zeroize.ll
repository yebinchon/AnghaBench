; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_esp.c_esp_zeroize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_esp.c_esp_zeroize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secasvar*)* @esp_zeroize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_zeroize(%struct.secasvar* %0) #0 {
  %2 = alloca %struct.secasvar*, align 8
  %3 = alloca i32, align 4
  store %struct.secasvar* %0, %struct.secasvar** %2, align 8
  %4 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %5 = call i32 @ah_zeroize(%struct.secasvar* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %7 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %12 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %17 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @_KEYLEN(%struct.TYPE_2__* %18)
  %20 = call i32 @bzero(i32 %15, i32 %19)
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %23 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %25 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @ah_zeroize(%struct.secasvar*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @_KEYLEN(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
