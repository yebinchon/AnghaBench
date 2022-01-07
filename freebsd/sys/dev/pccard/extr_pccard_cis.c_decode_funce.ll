; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_cis.c_decode_funce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_cis.c_decode_funce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_tuple = type { i32 }
%struct.pccard_function = type { i32, i32, i8**, i8*, i8* }

@PCCARD_TPLFE_TYPE_DISK_DEVICE_INTERFACE = common dso_local global i32 0, align 4
@PCCARD_TPLFE_TYPE_LAN_NID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pccard_tuple*, %struct.pccard_function*)* @decode_funce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_funce(%struct.pccard_tuple* %0, %struct.pccard_function* %1) #0 {
  %3 = alloca %struct.pccard_tuple*, align 8
  %4 = alloca %struct.pccard_function*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pccard_tuple* %0, %struct.pccard_tuple** %3, align 8
  store %struct.pccard_function* %1, %struct.pccard_function** %4, align 8
  %8 = load %struct.pccard_tuple*, %struct.pccard_tuple** %3, align 8
  %9 = call i8* @pccard_tuple_read_1(%struct.pccard_tuple* %8, i32 0)
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %7, align 4
  %11 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %12 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %70 [
    i32 129, label %14
    i32 128, label %28
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PCCARD_TPLFE_TYPE_DISK_DEVICE_INTERFACE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.pccard_tuple*, %struct.pccard_tuple** %3, align 8
  %20 = call i8* @pccard_tuple_read_1(%struct.pccard_tuple* %19, i32 1)
  %21 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %22 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.pccard_tuple*, %struct.pccard_tuple** %3, align 8
  %24 = call i8* @pccard_tuple_read_1(%struct.pccard_tuple* %23, i32 2)
  %25 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %26 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %18, %14
  br label %71

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PCCARD_TPLFE_TYPE_LAN_NID, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load %struct.pccard_tuple*, %struct.pccard_tuple** %3, align 8
  %34 = call i8* @pccard_tuple_read_1(%struct.pccard_tuple* %33, i32 1)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load %struct.pccard_tuple*, %struct.pccard_tuple** %3, align 8
  %37 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 2, %39
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 8
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %32
  br label %71

46:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %62, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load %struct.pccard_tuple*, %struct.pccard_tuple** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 2
  %55 = call i8* @pccard_tuple_read_1(%struct.pccard_tuple* %52, i32 %54)
  %56 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %57 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %56, i32 0, i32 2
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  store i8* %55, i8** %61, align 8
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %47

65:                                               ; preds = %47
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %68 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %28
  br label %71

70:                                               ; preds = %2
  br label %71

71:                                               ; preds = %70, %69, %45, %27
  ret i32 0
}

declare dso_local i8* @pccard_tuple_read_1(%struct.pccard_tuple*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
