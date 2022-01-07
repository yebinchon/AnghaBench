; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_get_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_get_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"no mac address found, assigning random: %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgem_softc*, i32*)* @cgem_get_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_get_mac(%struct.cgem_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.cgem_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cgem_softc* %0, %struct.cgem_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %57, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  %13 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @CGEM_SPEC_ADDR_LOW(i32 %14)
  %16 = call i32 @RD4(%struct.cgem_softc* %13, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @CGEM_SPEC_ADDR_HI(i32 %18)
  %20 = call i32 @RD4(%struct.cgem_softc* %17, i32 %19)
  %21 = and i32 %20, 65535
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %24, %12
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 255
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 24
  %44 = and i32 %43, 255
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 255
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 %53, i32* %55, align 4
  br label %60

56:                                               ; preds = %24
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %9

60:                                               ; preds = %27, %9
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %63, label %107

63:                                               ; preds = %60
  %64 = call i32 (...) @arc4random()
  store i32 %64, i32* %6, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 98, i32* %66, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 115, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 100, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = ashr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = ashr i32 %76, 8
  %78 = and i32 %77, 255
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, 255
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %86 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %63, %60
  %108 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %109 = call i32 @CGEM_SPEC_ADDR_LOW(i32 0)
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 24
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 16
  %118 = or i32 %113, %117
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 8
  %123 = or i32 %118, %122
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %123, %126
  %128 = call i32 @WR4(%struct.cgem_softc* %108, i32 %109, i32 %127)
  %129 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %130 = call i32 @CGEM_SPEC_ADDR_HI(i32 0)
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 5
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 8
  %135 = load i32*, i32** %4, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %134, %137
  %139 = call i32 @WR4(%struct.cgem_softc* %129, i32 %130, i32 %138)
  store i32 1, i32* %5, align 4
  br label %140

140:                                              ; preds = %152, %107
  %141 = load i32, i32* %5, align 4
  %142 = icmp slt i32 %141, 4
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @CGEM_SPEC_ADDR_LOW(i32 %145)
  %147 = call i32 @WR4(%struct.cgem_softc* %144, i32 %146, i32 0)
  %148 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @CGEM_SPEC_ADDR_HI(i32 %149)
  %151 = call i32 @WR4(%struct.cgem_softc* %148, i32 %150, i32 0)
  br label %152

152:                                              ; preds = %143
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %140

155:                                              ; preds = %140
  ret void
}

declare dso_local i32 @RD4(%struct.cgem_softc*, i32) #1

declare dso_local i32 @CGEM_SPEC_ADDR_LOW(i32) #1

declare dso_local i32 @CGEM_SPEC_ADDR_HI(i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WR4(%struct.cgem_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
