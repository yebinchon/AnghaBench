; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_get_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i32, %struct.tty* }
%struct.tty = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.usb_page_search = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@UCOM_FLAG_CONSOLE = common dso_local global i32 0, align 4
@ucom_cons_tx_high = common dso_local global i32 0, align 4
@ucom_cons_tx_low = common dso_local global i32 0, align 4
@UCOM_CONS_BUFSIZE = common dso_local global i32 0, align 4
@ucom_cons_tx_buf = common dso_local global i64 0, align 8
@UCOM_FLAG_GP_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cnt=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucom_get_data(%struct.ucom_softc* %0, %struct.usb_page_cache* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucom_softc*, align 8
  %8 = alloca %struct.usb_page_cache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.usb_page_search, align 4
  %13 = alloca %struct.tty*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %7, align 8
  store %struct.usb_page_cache* %1, %struct.usb_page_cache** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %18 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %17, i32 0, i32 1
  %19 = load %struct.tty*, %struct.tty** %18, align 8
  store %struct.tty* %19, %struct.tty** %13, align 8
  %20 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @UCOM_MTX_ASSERT(%struct.ucom_softc* %20, i32 %21)
  %23 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %24 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @UCOM_FLAG_CONSOLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %5
  %30 = load i32, i32* @ucom_cons_tx_high, align 4
  %31 = load i32, i32* @ucom_cons_tx_low, align 4
  %32 = sub i32 %30, %31
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* @UCOM_CONS_BUFSIZE, align 4
  %34 = load i32, i32* %16, align 4
  %35 = urem i32 %34, %33
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @UCOM_CONS_BUFSIZE, align 4
  %38 = load i32, i32* @ucom_cons_tx_low, align 4
  %39 = sub i32 %37, %38
  %40 = icmp ugt i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32, i32* @UCOM_CONS_BUFSIZE, align 4
  %43 = load i32, i32* @ucom_cons_tx_low, align 4
  %44 = sub i32 %42, %43
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %41, %29
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i64, i64* @ucom_cons_tx_buf, align 8
  %55 = load i32, i32* @ucom_cons_tx_low, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @usbd_copy_in(%struct.usb_page_cache* %52, i32 %53, i64 %57, i32 %58)
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @ucom_cons_tx_low, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* @ucom_cons_tx_low, align 4
  %63 = load i32, i32* @UCOM_CONS_BUFSIZE, align 4
  %64 = load i32, i32* @ucom_cons_tx_low, align 4
  %65 = urem i32 %64, %63
  store i32 %65, i32* @ucom_cons_tx_low, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  store i32 %71, i32* %6, align 4
  br label %137

72:                                               ; preds = %5
  %73 = load %struct.tty*, %struct.tty** %13, align 8
  %74 = call i64 @tty_gone(%struct.tty* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %78 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @UCOM_FLAG_GP_DATA, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %76, %72
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 0, i32* %85, align 4
  store i32 0, i32* %6, align 4
  br label %137

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %120, %86
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %88
  %92 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @usbd_get_page(%struct.usb_page_cache* %92, i32 %93, %struct.usb_page_search* %12)
  %95 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %12, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* %10, align 4
  %101 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %12, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %91
  %103 = load %struct.tty*, %struct.tty** %13, align 8
  %104 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %12, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %12, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ttydisc_getc(%struct.tty* %103, i32 %105, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sub i32 %113, %112
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %14, align 4
  %116 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %12, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ult i32 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %102
  br label %121

120:                                              ; preds = %102
  br label %88

121:                                              ; preds = %119, %88
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %15, align 4
  %124 = sub i32 %122, %123
  %125 = load i32*, i32** %11, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @DPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load i32*, i32** %11, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %137

136:                                              ; preds = %121
  store i32 1, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %135, %83, %51
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @UCOM_MTX_ASSERT(%struct.ucom_softc*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i64, i32) #1

declare dso_local i64 @tty_gone(%struct.tty*) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @ttydisc_getc(%struct.tty*, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
