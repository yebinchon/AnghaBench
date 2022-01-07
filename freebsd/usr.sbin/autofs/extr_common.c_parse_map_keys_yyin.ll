; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_map_keys_yyin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_map_keys_yyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@lineno = common dso_local global i32 0, align 4
@yyin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"adding key \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node*, i8*)* @parse_map_keys_yyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_map_keys_yyin(%struct.node* %0, i8* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* @lineno, align 4
  br label %9

9:                                                ; preds = %19, %18, %2
  %10 = load i32, i32* @yyin, align 4
  %11 = call i32 @getline(i8** %5, i64* %7, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %33

15:                                               ; preds = %9
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %9

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 1
  %23 = call i8* @strndup(i8* %20, i32 %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @log_debugx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.node*, %struct.node** %3, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @lineno, align 4
  %30 = call i32 @node_new(%struct.node* %26, i8* %27, i32* null, i32* null, i8* %28, i32 %29)
  %31 = load i32, i32* @lineno, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @lineno, align 4
  br label %9

33:                                               ; preds = %14
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @free(i8* %34)
  ret void
}

declare dso_local i32 @getline(i8**, i64*, i32) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @log_debugx(i8*, i8*) #1

declare dso_local i32 @node_new(%struct.node*, i8*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
