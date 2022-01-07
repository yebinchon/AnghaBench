; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_btxt.c_bhnd_nvram_btxt_seek_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_btxt.c_bhnd_nvram_btxt_seek_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*, i64*)* @bhnd_nvram_btxt_seek_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_btxt_seek_next(%struct.bhnd_nvram_io* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_nvram_io*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %4, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @bhnd_nvram_io_read_ptr(%struct.bhnd_nvram_io* %13, i64 %15, i8** %8, i32 0, i64* %9)
  store i32 %16, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %75

20:                                               ; preds = %2
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %58, %37, %20
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = load i64, i64* %9, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %23
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %11, align 1
  %34 = load i8, i8* %11, align 1
  %35 = call i64 @bhnd_nv_isspace(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  br label %23

40:                                               ; preds = %31
  %41 = load i8, i8* %11, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 35
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = add i64 %46, %51
  store i64 %52, i64* %12, align 8
  %53 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %4, align 8
  %54 = call i32 @bhnd_nvram_btxt_seek_eol(%struct.bhnd_nvram_io* %53, i64* %12)
  store i32 %54, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %75

58:                                               ; preds = %44
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %60, %62
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  store i8* %64, i8** %7, align 8
  br label %23

65:                                               ; preds = %40
  br label %66

66:                                               ; preds = %65, %23
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = load i64*, i64** %5, align 8
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %71
  store i64 %74, i64* %72, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %66, %56, %18
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @bhnd_nvram_io_read_ptr(%struct.bhnd_nvram_io*, i64, i8**, i32, i64*) #1

declare dso_local i64 @bhnd_nv_isspace(i8 signext) #1

declare dso_local i32 @bhnd_nvram_btxt_seek_eol(%struct.bhnd_nvram_io*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
