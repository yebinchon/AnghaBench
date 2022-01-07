; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_parse_file_arg.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_parse_file_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.note_data* }
%struct.note_data = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot read '%s'\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"could not open or read '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_file_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_file_arg(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.note_data*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.option*, %struct.option** %4, align 8
  %9 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 0
  %10 = load %struct.note_data*, %struct.note_data** %9, align 8
  store %struct.note_data* %10, %struct.note_data** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @BUG_ON_OPT_NEG(i32 %11)
  %13 = load %struct.note_data*, %struct.note_data** %7, align 8
  %14 = getelementptr inbounds %struct.note_data, %struct.note_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.note_data*, %struct.note_data** %7, align 8
  %20 = getelementptr inbounds %struct.note_data, %struct.note_data* %19, i32 0, i32 1
  %21 = call i32 @strbuf_addch(%struct.TYPE_5__* %20, i8 signext 10)
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = load %struct.note_data*, %struct.note_data** %7, align 8
  %28 = getelementptr inbounds %struct.note_data, %struct.note_data* %27, i32 0, i32 1
  %29 = call i64 @strbuf_read(%struct.TYPE_5__* %28, i32 0, i32 1024)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @die_errno(i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %31, %26
  br label %47

36:                                               ; preds = %22
  %37 = load %struct.note_data*, %struct.note_data** %7, align 8
  %38 = getelementptr inbounds %struct.note_data, %struct.note_data* %37, i32 0, i32 1
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @strbuf_read_file(%struct.TYPE_5__* %38, i8* %39, i32 1024)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @die_errno(i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %35
  %48 = load %struct.note_data*, %struct.note_data** %7, align 8
  %49 = getelementptr inbounds %struct.note_data, %struct.note_data* %48, i32 0, i32 1
  %50 = call i32 @strbuf_stripspace(%struct.TYPE_5__* %49, i32 0)
  %51 = load %struct.note_data*, %struct.note_data** %7, align 8
  %52 = getelementptr inbounds %struct.note_data, %struct.note_data* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  ret i32 0
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @strbuf_addch(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @strbuf_read(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @die_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strbuf_read_file(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @strbuf_stripspace(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
