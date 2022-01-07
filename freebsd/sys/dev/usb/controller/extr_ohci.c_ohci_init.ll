; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_13__**, i32, %struct.TYPE_11__*, %struct.TYPE_10__, i8*, i8*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32*, i32, i32, i32 }
%struct.usb_page_search = type { %struct.TYPE_11__* }

@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@OHCI_NORMAL_INTRS = common dso_local global i32 0, align 4
@OHCI_NO_EDS = common dso_local global i64 0, align 8
@OHCI_NO_INTRS = common dso_local global i64 0, align 8
@ohci_iterate_hw_softc = common dso_local global i32 0, align 4
@ohci_bus_methods = common dso_local global i32 0, align 4
@USB_REV_1_0 = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@ohcidebug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ohci_init(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.usb_page_search, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @OHCI_NORMAL_INTRS, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %20 = call i8* @ohci_init_ed(i32* %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = call i8* @ohci_init_ed(i32* %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = call i8* @ohci_init_ed(i32* %31)
  %33 = bitcast i8* %32 to %struct.TYPE_13__*
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %35, align 8
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %54, %1
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @OHCI_NO_EDS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call i8* @ohci_init_ed(i32* %46)
  %48 = bitcast i8* %47 to %struct.TYPE_13__*
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %51, i64 %52
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %53, align 8
  br label %54

54:                                               ; preds = %40
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %5, align 8
  br label %36

57:                                               ; preds = %36
  %58 = load i64, i64* @OHCI_NO_EDS, align 8
  %59 = udiv i64 %58, 2
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %98, %57
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %60
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %70, %63
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %6, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %65
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %6, align 8
  %73 = xor i64 %71, %72
  %74 = load i64, i64* %6, align 8
  %75 = udiv i64 %74, 2
  %76 = or i64 %73, %75
  store i64 %76, i64* %8, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %79, i64 %80
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %9, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %85, i64 %86
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %10, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %7, align 8
  br label %65

98:                                               ; preds = %65
  %99 = load i64, i64* %6, align 8
  %100 = lshr i64 %99, 1
  store i64 %100, i64* %6, align 8
  br label %60

101:                                              ; preds = %60
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %104, i64 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  store %struct.TYPE_13__* %106, %struct.TYPE_13__** %11, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %12, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %112, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = call i32 @usbd_get_page(i32* %120, i32 0, %struct.usb_page_search* %4)
  %122 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 4
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %125, align 8
  store i64 0, i64* %5, align 8
  br label %126

126:                                              ; preds = %149, %101
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* @OHCI_NO_INTRS, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %152

130:                                              ; preds = %126
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* @OHCI_NO_EDS, align 8
  %136 = udiv i64 %135, 2
  %137 = or i64 %134, %136
  %138 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %133, i64 %137
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* %5, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32 %141, i32* %148, align 4
  br label %149

149:                                              ; preds = %130
  %150 = load i64, i64* %5, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %5, align 8
  br label %126

152:                                              ; preds = %126
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = call i32 @usb_bus_mem_flush_all(%struct.TYPE_14__* %154, i32* @ohci_iterate_hw_softc)
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  store i32* @ohci_bus_methods, i32** %158, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = call i32 @usb_callout_init_mtx(i32* %160, i32* %163, i32 0)
  %165 = load i32, i32* @USB_REV_1_0, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %170 = call i64 @ohci_controller_init(%struct.TYPE_12__* %169, i32 0)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %152
  %173 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %173, i32* %2, align 4
  br label %179

174:                                              ; preds = %152
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = call i32 @ohci_do_poll(%struct.TYPE_14__* %176)
  %178 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %174, %172
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i8* @ohci_init_ed(i32*) #1

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @usb_bus_mem_flush_all(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i64 @ohci_controller_init(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ohci_do_poll(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
