; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_parse_page_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_parse_page_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aldap_page_control = type { i8*, i32, i32* }
%struct.ber_element = type { %struct.TYPE_2__*, %struct.ber_element* }
%struct.TYPE_2__ = type { i32 }
%struct.ber = type { i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aldap_page_control* @aldap_parse_page_control(%struct.ber_element* %0, i64 %1) #0 {
  %3 = alloca %struct.aldap_page_control*, align 8
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ber, align 8
  %10 = alloca %struct.ber_element*, align 8
  %11 = alloca %struct.aldap_page_control*, align 8
  store %struct.ber_element* %0, %struct.ber_element** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = getelementptr inbounds %struct.ber, %struct.ber* %9, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds %struct.ber, %struct.ber* %9, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %15 = call i32 @ber_scanf_elements(%struct.ber_element* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %6, i8** %8)
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %18 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ber_set_readbuf(%struct.ber* %9, i8* %16, i32 %21)
  %23 = call %struct.ber_element* @ber_read_elements(%struct.ber* %9, i32* null)
  store %struct.ber_element* %23, %struct.ber_element** %10, align 8
  %24 = call i8* @malloc(i32 24)
  %25 = bitcast i8* %24 to %struct.aldap_page_control*
  store %struct.aldap_page_control* %25, %struct.aldap_page_control** %11, align 8
  %26 = icmp eq %struct.aldap_page_control* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.ber_element*, %struct.ber_element** %10, align 8
  %29 = icmp ne %struct.ber_element* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.ber_element*, %struct.ber_element** %10, align 8
  %32 = call i32 @ber_free_elements(%struct.ber_element* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = call i32 @ber_free(%struct.ber* %9)
  store %struct.aldap_page_control* null, %struct.aldap_page_control** %3, align 8
  br label %82

35:                                               ; preds = %2
  %36 = load %struct.ber_element*, %struct.ber_element** %10, align 8
  %37 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %36, i32 0, i32 1
  %38 = load %struct.ber_element*, %struct.ber_element** %37, align 8
  %39 = load %struct.aldap_page_control*, %struct.aldap_page_control** %11, align 8
  %40 = getelementptr inbounds %struct.aldap_page_control, %struct.aldap_page_control* %39, i32 0, i32 0
  %41 = call i32 @ber_scanf_elements(%struct.ber_element* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %40, i8** %7)
  %42 = load %struct.ber_element*, %struct.ber_element** %10, align 8
  %43 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %42, i32 0, i32 1
  %44 = load %struct.ber_element*, %struct.ber_element** %43, align 8
  %45 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.aldap_page_control*, %struct.aldap_page_control** %11, align 8
  %50 = getelementptr inbounds %struct.aldap_page_control, %struct.aldap_page_control* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.aldap_page_control*, %struct.aldap_page_control** %11, align 8
  %52 = getelementptr inbounds %struct.aldap_page_control, %struct.aldap_page_control* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @malloc(i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.aldap_page_control*, %struct.aldap_page_control** %11, align 8
  %57 = getelementptr inbounds %struct.aldap_page_control, %struct.aldap_page_control* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = icmp eq i32* %55, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %35
  %60 = load %struct.ber_element*, %struct.ber_element** %10, align 8
  %61 = icmp ne %struct.ber_element* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.ber_element*, %struct.ber_element** %10, align 8
  %64 = call i32 @ber_free_elements(%struct.ber_element* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = call i32 @ber_free(%struct.ber* %9)
  %67 = load %struct.aldap_page_control*, %struct.aldap_page_control** %11, align 8
  %68 = call i32 @free(%struct.aldap_page_control* %67)
  store %struct.aldap_page_control* null, %struct.aldap_page_control** %3, align 8
  br label %82

69:                                               ; preds = %35
  %70 = load %struct.aldap_page_control*, %struct.aldap_page_control** %11, align 8
  %71 = getelementptr inbounds %struct.aldap_page_control, %struct.aldap_page_control* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.aldap_page_control*, %struct.aldap_page_control** %11, align 8
  %75 = getelementptr inbounds %struct.aldap_page_control, %struct.aldap_page_control* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memcpy(i32* %72, i8* %73, i32 %76)
  %78 = load %struct.ber_element*, %struct.ber_element** %10, align 8
  %79 = call i32 @ber_free_elements(%struct.ber_element* %78)
  %80 = call i32 @ber_free(%struct.ber* %9)
  %81 = load %struct.aldap_page_control*, %struct.aldap_page_control** %11, align 8
  store %struct.aldap_page_control* %81, %struct.aldap_page_control** %3, align 8
  br label %82

82:                                               ; preds = %69, %65, %33
  %83 = load %struct.aldap_page_control*, %struct.aldap_page_control** %3, align 8
  ret %struct.aldap_page_control* %83
}

declare dso_local i32 @ber_scanf_elements(%struct.ber_element*, i8*, i8**, i8**) #1

declare dso_local i32 @ber_set_readbuf(%struct.ber*, i8*, i32) #1

declare dso_local %struct.ber_element* @ber_read_elements(%struct.ber*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ber_free_elements(%struct.ber_element*) #1

declare dso_local i32 @ber_free(%struct.ber*) #1

declare dso_local i32 @free(%struct.aldap_page_control*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
