; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout-index.c_checkout_all.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout-index.c_checkout_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i8* }

@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@checkout_stage = common dso_local global i64 0, align 8
@CHECKOUT_ALL = common dso_local global i64 0, align 8
@to_tempfile = common dso_local global i64 0, align 8
@state = common dso_local global i32 0, align 4
@topath = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @checkout_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkout_all(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store %struct.cache_entry* null, %struct.cache_entry** %7, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %104, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @active_nr, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %107

13:                                               ; preds = %9
  %14 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %14, i64 %16
  %18 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  store %struct.cache_entry* %18, %struct.cache_entry** %8, align 8
  %19 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %20 = call i64 @ce_stage(%struct.cache_entry* %19)
  %21 = load i64, i64* @checkout_stage, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load i64, i64* @CHECKOUT_ALL, align 8
  %25 = load i64, i64* @checkout_stage, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %29 = call i64 @ce_stage(%struct.cache_entry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %23
  br label %104

32:                                               ; preds = %27, %13
  %33 = load i8*, i8** %3, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %42 = call i32 @ce_namelen(%struct.cache_entry* %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %3, align 8
  %47 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %48 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @memcmp(i8* %46, i8* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %40
  br label %104

54:                                               ; preds = %45, %35, %32
  %55 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %56 = icmp ne %struct.cache_entry* %55, null
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = load i64, i64* @to_tempfile, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %62 = call i32 @ce_namelen(%struct.cache_entry* %61)
  %63 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %64 = call i32 @ce_namelen(%struct.cache_entry* %63)
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %60
  %67 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %68 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %71 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %74 = call i32 @ce_namelen(%struct.cache_entry* %73)
  %75 = call i64 @memcmp(i8* %69, i8* %72, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %66, %60
  %78 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %79 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @write_tempfile_record(i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %77, %66
  br label %84

84:                                               ; preds = %83, %57, %54
  %85 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %86 = load i64, i64* @to_tempfile, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32**, i32*** @topath, align 8
  %90 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %91 = call i64 @ce_stage(%struct.cache_entry* %90)
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  br label %95

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %88
  %96 = phi i32* [ %93, %88 ], [ null, %94 ]
  %97 = call i64 @checkout_entry(%struct.cache_entry* %85, i32* @state, i32* %96, i32* null)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %95
  %103 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  store %struct.cache_entry* %103, %struct.cache_entry** %7, align 8
  br label %104

104:                                              ; preds = %102, %53, %31
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %9

107:                                              ; preds = %9
  %108 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %109 = icmp ne %struct.cache_entry* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i64, i64* @to_tempfile, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %115 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %3, align 8
  %118 = call i32 @write_tempfile_record(i8* %116, i8* %117)
  br label %119

119:                                              ; preds = %113, %110, %107
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 @exit(i32 128) #3
  unreachable

124:                                              ; preds = %119
  ret void
}

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @write_tempfile_record(i8*, i8*) #1

declare dso_local i64 @checkout_entry(%struct.cache_entry*, i32*, i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
