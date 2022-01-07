; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_93cx6.c_send_seeprom_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_93cx6.c_send_seeprom_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seeprom_descriptor = type { i32, i32, i32, i32, i32 }
%struct.seeprom_cmd = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seeprom_descriptor*, %struct.seeprom_cmd*)* @send_seeprom_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_seeprom_cmd(%struct.seeprom_descriptor* %0, %struct.seeprom_cmd* %1) #0 {
  %3 = alloca %struct.seeprom_descriptor*, align 8
  %4 = alloca %struct.seeprom_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.seeprom_descriptor* %0, %struct.seeprom_descriptor** %3, align 8
  store %struct.seeprom_cmd* %1, %struct.seeprom_cmd** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %8 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %11 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %17 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %15, %18
  %20 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %14, i32 %19)
  %21 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %22 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %23 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %21, i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %83, %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.seeprom_cmd*, %struct.seeprom_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.seeprom_cmd, %struct.seeprom_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %26
  %33 = load %struct.seeprom_cmd*, %struct.seeprom_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.seeprom_cmd, %struct.seeprom_cmd* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %43 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = xor i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %32
  %48 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %48, i32 %49)
  %51 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %52 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %53 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %51, i32 %54)
  %56 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %59 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %57, %60
  %62 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %56, i32 %61)
  %63 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %64 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %65 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %63, i32 %66)
  %68 = load %struct.seeprom_cmd*, %struct.seeprom_cmd** %4, align 8
  %69 = getelementptr inbounds %struct.seeprom_cmd, %struct.seeprom_cmd* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %47
  %77 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %3, align 8
  %78 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = xor i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %47
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %26

86:                                               ; preds = %26
  ret void
}

declare dso_local i32 @SEEPROM_OUTB(%struct.seeprom_descriptor*, i32) #1

declare dso_local i32 @CLOCK_PULSE(%struct.seeprom_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
