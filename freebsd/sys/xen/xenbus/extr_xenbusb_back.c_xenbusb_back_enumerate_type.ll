; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb_back.c_xenbusb_back_enumerate_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb_back.c_xenbusb_back_enumerate_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbusb_softc = type { i32 }
%struct.sbuf = type { i32 }

@XST_NIL = common dso_local global i32 0, align 4
@M_XENSTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xenbusb_back_enumerate_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenbusb_back_enumerate_type(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xenbusb_softc*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sbuf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.sbuf*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.xenbusb_softc* @device_get_softc(i32 %18)
  store %struct.xenbusb_softc* %19, %struct.xenbusb_softc** %6, align 8
  %20 = load i32, i32* @XST_NIL, align 4
  %21 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %6, align 8
  %22 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @xs_directory(i32 %20, i32 %23, i8* %24, i64* %9, i8*** %7)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %89

30:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %31

31:                                               ; preds = %82, %30
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %31
  %36 = load i8**, i8*** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call %struct.sbuf* @xs_join(i8* %40, i8* %41)
  store %struct.sbuf* %42, %struct.sbuf** %11, align 8
  %43 = load i32, i32* @XST_NIL, align 4
  %44 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %6, align 8
  %45 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %48 = call i8* @sbuf_data(%struct.sbuf* %47)
  %49 = call i32 @xs_directory(i32 %43, i32 %46, i8* %48, i64* %15, i8*** %13)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %51 = call i32 @sbuf_delete(%struct.sbuf* %50)
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  br label %85

55:                                               ; preds = %35
  store i64 0, i64* %14, align 8
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %15, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i8**, i8*** %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = call %struct.sbuf* @xs_join(i8* %65, i8* %66)
  store %struct.sbuf* %67, %struct.sbuf** %17, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.sbuf*, %struct.sbuf** %17, align 8
  %71 = call i8* @sbuf_data(%struct.sbuf* %70)
  %72 = call i32 @xenbusb_add_device(i32 %68, i8* %69, i8* %71)
  %73 = load %struct.sbuf*, %struct.sbuf** %17, align 8
  %74 = call i32 @sbuf_delete(%struct.sbuf* %73)
  br label %75

75:                                               ; preds = %60
  %76 = load i64, i64* %14, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %14, align 8
  br label %56

78:                                               ; preds = %56
  %79 = load i8**, i8*** %13, align 8
  %80 = load i32, i32* @M_XENSTORE, align 4
  %81 = call i32 @free(i8** %79, i32 %80)
  br label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %8, align 8
  br label %31

85:                                               ; preds = %54, %31
  %86 = load i8**, i8*** %7, align 8
  %87 = load i32, i32* @M_XENSTORE, align 4
  %88 = call i32 @free(i8** %86, i32 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %28
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.xenbusb_softc* @device_get_softc(i32) #1

declare dso_local i32 @xs_directory(i32, i32, i8*, i64*, i8***) #1

declare dso_local %struct.sbuf* @xs_join(i8*, i8*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @xenbusb_add_device(i32, i8*, i8*) #1

declare dso_local i32 @free(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
