; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_read_patch_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_read_patch_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"git apply: failed to read\00", align 1
@SLOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i32)* @read_patch_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_patch_file(%struct.strbuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @strbuf_read(%struct.strbuf* %6, i32 %7, i32 0)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @error_errno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %3, align 4
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %14 = load i32, i32* @SLOP, align 4
  %15 = call i32 @strbuf_grow(%struct.strbuf* %13, i32 %14)
  %16 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load i32, i32* @SLOP, align 4
  %24 = call i32 @memset(i64 %22, i32 0, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %12, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @error_errno(i8*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
