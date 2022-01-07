; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_portreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_portreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@UHCI_PORTSC1 = common dso_local global i32 0, align 4
@UHCI_PORTSC2 = common dso_local global i32 0, align 4
@USB_ERR_IOERROR = common dso_local global i32 0, align 4
@UHCI_PORTSC_PR = common dso_local global i32 0, align 4
@usb_port_root_reset_delay = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"uhci port %d reset, status0 = 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"uhci port %d reset, status1 = 0x%04x\0A\00", align 1
@UHCI_PORTSC_PE = common dso_local global i32 0, align 4
@usb_port_reset_delay = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"uhci port %d iteration %u, status = 0x%04x\0A\00", align 1
@UHCI_PORTSC_CCS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"uhci port %d loop %u, device detached\0A\00", align 1
@UHCI_PORTSC_POEDC = common dso_local global i32 0, align 4
@UHCI_PORTSC_CSC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"uhci port %d reset timed out\0A\00", align 1
@USB_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"uhci port %d reset, status2 = 0x%04x\0A\00", align 1
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @uhci_portreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_portreset(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @UHCI_PORTSC1, align 4
  store i32 %12, i32* %6, align 4
  br label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @UHCI_PORTSC2, align 4
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @USB_ERR_IOERROR, align 4
  store i32 %19, i32* %3, align 4
  br label %154

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %11
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = call i32 @uhci_restart(%struct.TYPE_8__* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @UREAD2(%struct.TYPE_8__* %24, i32 %25)
  %27 = call i32 @URWMASK(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @UHCI_PORTSC_PR, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @UWRITE2(%struct.TYPE_8__* %28, i32 %29, i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* @usb_port_root_reset_delay, align 4
  %38 = call i32 @USB_MS_TO_TICKS(i32 %37)
  %39 = call i32 @usb_pause_mtx(i32* %36, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @UREAD2(%struct.TYPE_8__* %41, i32 %42)
  %44 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @UREAD2(%struct.TYPE_8__* %45, i32 %46)
  %48 = call i32 @URWMASK(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @UHCI_PORTSC_PR, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @UWRITE2(%struct.TYPE_8__* %49, i32 %50, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = call i32 @mtx_unlock(i32* %58)
  %60 = call i32 @DELAY(i32 100)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @mtx_lock(i32* %63)
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @UREAD2(%struct.TYPE_8__* %66, i32 %67)
  %69 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @UREAD2(%struct.TYPE_8__* %70, i32 %71)
  %73 = call i32 @URWMASK(i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @UHCI_PORTSC_PE, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @UWRITE2(%struct.TYPE_8__* %74, i32 %75, i32 %78)
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %138, %21
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 12
  br i1 %82, label %83, label %141

83:                                               ; preds = %80
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* @usb_port_reset_delay, align 4
  %88 = call i32 @USB_MS_TO_TICKS(i32 %87)
  %89 = call i32 @usb_pause_mtx(i32* %86, i32 %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @UREAD2(%struct.TYPE_8__* %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @UHCI_PORTSC_CCS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %83
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %103)
  br label %145

105:                                              ; preds = %83
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @UHCI_PORTSC_POEDC, align 4
  %108 = load i32, i32* @UHCI_PORTSC_CSC, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @URWMASK(i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @UHCI_PORTSC_POEDC, align 4
  %119 = load i32, i32* @UHCI_PORTSC_CSC, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = or i32 %116, %121
  %123 = call i32 @UWRITE2(%struct.TYPE_8__* %113, i32 %114, i32 %122)
  br label %138

124:                                              ; preds = %105
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @UHCI_PORTSC_PE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %145

130:                                              ; preds = %124
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @URWMASK(i32 %133)
  %135 = load i32, i32* @UHCI_PORTSC_PE, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @UWRITE2(%struct.TYPE_8__* %131, i32 %132, i32 %136)
  br label %138

138:                                              ; preds = %130, %112
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %80

141:                                              ; preds = %80
  %142 = load i32, i32* %5, align 4
  %143 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @USB_ERR_TIMEOUT, align 4
  store i32 %144, i32* %3, align 4
  br label %154

145:                                              ; preds = %129, %101
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @UREAD2(%struct.TYPE_8__* %147, i32 %148)
  %150 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32 %149)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 4
  %153 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %145, %141, %18
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @uhci_restart(%struct.TYPE_8__*) #1

declare dso_local i32 @URWMASK(i32) #1

declare dso_local i32 @UREAD2(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @UWRITE2(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @USB_MS_TO_TICKS(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, ...) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
