; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_cxddk.c_cx_enable_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_cxddk.c_cx_enable_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@M_ASYNC = common dso_local global i64 0, align 8
@IER_RXD = common dso_local global i8 0, align 1
@IER_RET = common dso_local global i8 0, align 1
@CCR_DISRX = common dso_local global i32 0, align 4
@CCR_ENRX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx_enable_receive(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = call i64 @cx_receive_enabled(%struct.TYPE_4__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %55, label %12

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @CAR(i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 3
  %21 = trunc i32 %20 to i8
  %22 = call i32 @outb(i32 %16, i8 zeroext %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @M_ASYNC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %12
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @IER(i32 %31)
  %33 = call zeroext i8 @inb(i32 %32)
  store i8 %33, i8* %5, align 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @IER(i32 %36)
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @IER_RXD, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @IER_RET, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %39, %45
  %47 = trunc i32 %46 to i8
  %48 = call i32 @outb(i32 %37, i8 zeroext %47)
  br label %49

49:                                               ; preds = %28, %12
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CCR_DISRX, align 4
  %54 = call i32 @cx_cmd(i32 %52, i32 %53)
  br label %117

55:                                               ; preds = %9, %2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = call i64 @cx_receive_enabled(%struct.TYPE_4__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %116, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %116

62:                                               ; preds = %59
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @CAR(i32 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 3
  %71 = trunc i32 %70 to i8
  %72 = call i32 @outb(i32 %66, i8 zeroext %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @IER(i32 %75)
  %77 = call zeroext i8 @inb(i32 %76)
  store i8 %77, i8* %5, align 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @M_ASYNC, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %62
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @IER(i32 %86)
  %88 = load i8, i8* %5, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @IER_RXD, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @IER_RET, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %91, %93
  %95 = or i32 %89, %94
  %96 = trunc i32 %95 to i8
  %97 = call i32 @outb(i32 %87, i8 zeroext %96)
  br label %110

98:                                               ; preds = %62
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @IER(i32 %101)
  %103 = load i8, i8* %5, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @IER_RXD, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %104, %106
  %108 = trunc i32 %107 to i8
  %109 = call i32 @outb(i32 %102, i8 zeroext %108)
  br label %110

110:                                              ; preds = %98, %83
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @CCR_ENRX, align 4
  %115 = call i32 @cx_cmd(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %59, %55
  br label %117

117:                                              ; preds = %116, %49
  ret void
}

declare dso_local i64 @cx_receive_enabled(%struct.TYPE_4__*) #1

declare dso_local i32 @outb(i32, i8 zeroext) #1

declare dso_local i32 @CAR(i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @IER(i32) #1

declare dso_local i32 @cx_cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
