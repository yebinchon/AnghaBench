; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_btxt.c_bhnd_nvram_btxt_entry_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_btxt.c_bhnd_nvram_btxt_entry_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*, i64, i64*, i64*)* @bhnd_nvram_btxt_entry_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_btxt_entry_len(%struct.bhnd_nvram_io* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_nvram_io*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %17 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @bhnd_nvram_io_read_ptr(%struct.bhnd_nvram_io* %17, i64 %18, i8** %12, i32 0, i64* %13)
  store i32 %19, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %5, align 4
  br label %89

23:                                               ; preds = %4
  %24 = load i8*, i8** %12, align 8
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %12, align 8
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %50, %23
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = load i64, i64* %13, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %26
  %35 = load i8*, i8** %11, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 35
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 13
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39, %34
  br label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %11, align 8
  br label %26

53:                                               ; preds = %49, %26
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = load i64*, i64** %8, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %9, align 8
  store i64 %61, i64* %62, align 8
  store i64 0, i64* %15, align 8
  br label %63

63:                                               ; preds = %85, %53
  %64 = load i64, i64* %15, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = sub i64 %71, %72
  %74 = sub i64 %73, 1
  %75 = getelementptr inbounds i8, i8* %69, i64 %74
  %76 = load i8, i8* %75, align 1
  store i8 %76, i8* %16, align 1
  %77 = load i8, i8* %16, align 1
  %78 = call i32 @bhnd_nv_isspace(i8 signext %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %68
  br label %88

81:                                               ; preds = %68
  %82 = load i64*, i64** %9, align 8
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %15, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %15, align 8
  br label %63

88:                                               ; preds = %80, %63
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %21
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @bhnd_nvram_io_read_ptr(%struct.bhnd_nvram_io*, i64, i8**, i32, i64*) #1

declare dso_local i32 @bhnd_nv_isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
