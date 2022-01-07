; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_write_poll.c_fifolog_write_record_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_write_poll.c_fifolog_write_record_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifolog_writer = type { i32 }

@FIFOLOG_TIMESTAMP = common dso_local global i32 0, align 4
@FIFOLOG_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifolog_write_record_poll(%struct.fifolog_writer* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.fifolog_writer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.fifolog_writer* %0, %struct.fifolog_writer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = call i32 @time(i32* %8)
  br label %18

18:                                               ; preds = %16, %5
  %19 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %20 = call i32 @fifolog_write_assert(%struct.fifolog_writer* %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @FIFOLOG_TIMESTAMP, align 4
  %23 = load i32, i32* @FIFOLOG_LENGTH, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %18
  %37 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @fifolog_write_record(%struct.fifolog_writer* %37, i32 %38, i32 %39, i8* %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %36
  %46 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @fifolog_write_gzip(%struct.fifolog_writer* %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 -1, i32* %13, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @fifolog_write_record(%struct.fifolog_writer* %52, i32 %53, i32 %54, i8* %55, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  store i32 -1, i32* %13, align 4
  br label %61

61:                                               ; preds = %60, %51
  br label %62

62:                                               ; preds = %61, %36
  br label %102

63:                                               ; preds = %18
  %64 = load i8*, i8** %9, align 8
  store i8* %64, i8** %12, align 8
  br label %65

65:                                               ; preds = %92, %63
  %66 = load i64, i64* %10, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = load i64, i64* %10, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %71, 255
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 255, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %68
  br label %75

75:                                               ; preds = %90, %74
  %76 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @fifolog_write_record(%struct.fifolog_writer* %76, i32 %77, i32 %78, i8* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @fifolog_write_gzip(%struct.fifolog_writer* %85, i32 %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 -1, i32* %13, align 4
  br label %90

90:                                               ; preds = %89, %84
  br label %75

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %10, align 8
  %96 = sub nsw i64 %95, %94
  store i64 %96, i64* %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i8*, i8** %12, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %12, align 8
  br label %65

101:                                              ; preds = %65
  br label %102

102:                                              ; preds = %101, %62
  %103 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i64 @fifolog_write_gzip(%struct.fifolog_writer* %103, i32 %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 -1, i32* %13, align 4
  br label %108

108:                                              ; preds = %107, %102
  %109 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %110 = call i32 @fifolog_write_assert(%struct.fifolog_writer* %109)
  %111 = load i32, i32* %13, align 4
  ret i32 %111
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @fifolog_write_assert(%struct.fifolog_writer*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fifolog_write_record(%struct.fifolog_writer*, i32, i32, i8*, i32) #1

declare dso_local i64 @fifolog_write_gzip(%struct.fifolog_writer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
