; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_tag.c_parse_msg_arg.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_tag.c_parse_msg_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.msg_arg* }
%struct.msg_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_msg_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_msg_arg(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msg_arg*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.option*, %struct.option** %5, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load %struct.msg_arg*, %struct.msg_arg** %10, align 8
  store %struct.msg_arg* %11, %struct.msg_arg** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @BUG_ON_OPT_NEG(i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.msg_arg*, %struct.msg_arg** %8, align 8
  %19 = getelementptr inbounds %struct.msg_arg, %struct.msg_arg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.msg_arg*, %struct.msg_arg** %8, align 8
  %25 = getelementptr inbounds %struct.msg_arg, %struct.msg_arg* %24, i32 0, i32 1
  %26 = call i32 @strbuf_addstr(%struct.TYPE_2__* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.msg_arg*, %struct.msg_arg** %8, align 8
  %29 = getelementptr inbounds %struct.msg_arg, %struct.msg_arg* %28, i32 0, i32 1
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strbuf_addstr(%struct.TYPE_2__* %29, i8* %30)
  %32 = load %struct.msg_arg*, %struct.msg_arg** %8, align 8
  %33 = getelementptr inbounds %struct.msg_arg, %struct.msg_arg* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @strbuf_addstr(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
