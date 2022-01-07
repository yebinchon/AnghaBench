; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_dump_proto_sram.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_dump_proto_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_eeprom = type { i32*, i32, i32 }

@PROTO_SRAM_SIZE = common dso_local global i32 0, align 4
@PROTO_SRAM_EEPROM_ADDR = common dso_local global i32 0, align 4
@CHELSIO_GET_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"show protocol sram\00", align 1
@PROTO_SRAM_LINES = common dso_local global i32 0, align 4
@PROTO_SRAM_LINE_NIBBLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dump_proto_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_proto_sram(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ch_eeprom, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @PROTO_SRAM_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  store i32* %14, i32** %8, align 8
  %15 = mul nuw i64 4, %12
  %16 = trunc i64 %15 to i32
  %17 = call i32 @bzero(i32* %14, i32 %16)
  %18 = load i32, i32* @PROTO_SRAM_EEPROM_ADDR, align 4
  %19 = getelementptr inbounds %struct.ch_eeprom, %struct.ch_eeprom* %7, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds %struct.ch_eeprom, %struct.ch_eeprom* %7, i32 0, i32 0
  store i32* %20, i32** %21, align 8
  %22 = mul nuw i64 4, %12
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.ch_eeprom, %struct.ch_eeprom* %7, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* @CHELSIO_GET_EEPROM, align 4
  %27 = call i64 @doit(i8* %25, i32 %26, %struct.ch_eeprom* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %1
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %71, %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @PROTO_SRAM_LINES, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %32
  %37 = load i32, i32* @PROTO_SRAM_LINE_NIBBLES, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %66, %36
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @PROTO_SRAM_LINE_NIBBLES, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sdiv i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 4
  store i32 %59, i32* %10, align 4
  br label %63

60:                                               ; preds = %42
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 15
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %4, align 4
  br label %39

69:                                               ; preds = %39
  %70 = call i32 @putchar(i8 signext 10)
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %32

74:                                               ; preds = %32
  %75 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %75)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i64 @doit(i8*, i32, %struct.ch_eeprom*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @putchar(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
