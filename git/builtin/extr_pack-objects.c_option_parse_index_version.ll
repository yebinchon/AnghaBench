; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_option_parse_index_version.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_option_parse_index_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.option = type { i32 }

@pack_idx_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"unsupported index version %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"bad index version '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @option_parse_index_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_parse_index_version(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @BUG_ON_OPT_NEG(i32 %10)
  %12 = load i8*, i8** %8, align 8
  %13 = call i8* @strtoul(i8* %12, i8** %7, i32 10)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pack_idx_opts, i32 0, i32 0), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pack_idx_opts, i32 0, i32 0), align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @die(i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 44
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i8* @strtoul(i8* %34, i8** %7, i32 0)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pack_idx_opts, i32 0, i32 1), align 4
  br label %37

37:                                               ; preds = %32, %26, %21
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pack_idx_opts, i32 0, i32 1), align 4
  %44 = and i32 %43, -2147483648
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %37
  %47 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @die(i32 %47, i8* %48)
  br label %50

50:                                               ; preds = %46, %42
  ret i32 0
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
