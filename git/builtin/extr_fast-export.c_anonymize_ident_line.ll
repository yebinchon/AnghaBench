; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_anonymize_ident_line.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_anonymize_ident_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.ident_split = type { i8*, i64, i64, i8* }

@anonymize_ident_line.buffers = internal global [1 x %struct.strbuf] [%struct.strbuf { i8* inttoptr (i64 128 to i8*), i32 128 }], align 16
@anonymize_ident_line.which_buffer = internal global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"malformed line fed to anonymize_ident_line: %.*s\00", align 1
@idents = common dso_local global i32 0, align 4
@anonymize_ident = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Malformed Ident <malformed@example.com> 0 -0000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**)* @anonymize_ident_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anonymize_ident_line(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.ident_split, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %10 = load i32, i32* @anonymize_ident_line.which_buffer, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* @anonymize_ident_line.which_buffer, align 4
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds [1 x %struct.strbuf], [1 x %struct.strbuf]* @anonymize_ident_line.buffers, i64 0, i64 %12
  store %struct.strbuf* %13, %struct.strbuf** %5, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.strbuf* getelementptr inbounds ([1 x %struct.strbuf], [1 x %struct.strbuf]* @anonymize_ident_line.buffers, i64 0, i64 0))
  %15 = load i32, i32* @anonymize_ident_line.which_buffer, align 4
  %16 = urem i32 %15, %14
  store i32 %16, i32* @anonymize_ident_line.which_buffer, align 4
  %17 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %18 = call i32 @strbuf_reset(%struct.strbuf* %17)
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 32)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %2
  %25 = load i8**, i8*** %4, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %3, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = ptrtoint i8* %26 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = load i8**, i8*** %3, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @BUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %34)
  br label %36

36:                                               ; preds = %24, %2
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  %39 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %40 = load i8**, i8*** %3, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8**, i8*** %3, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %42 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @strbuf_add(%struct.strbuf* %39, i8* %41, i32 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = load i8**, i8*** %4, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @split_ident_line(%struct.ident_split* %6, i8* %50, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %93, label %60

60:                                               ; preds = %36
  %61 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %93

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %66, %68
  store i64 %69, i64* %9, align 8
  %70 = load i32, i32* @anonymize_ident, align 4
  %71 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @anonymize_mem(i32* @idents, i32 %70, i64 %72, i64* %9)
  store i8* %73, i8** %8, align 8
  %74 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @strbuf_add(%struct.strbuf* %74, i8* %75, i32 %77)
  %79 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %80 = call i32 @strbuf_addch(%struct.strbuf* %79, i8 signext 32)
  %81 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %82 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %85 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @strbuf_add(%struct.strbuf* %81, i8* %83, i32 %91)
  br label %96

93:                                               ; preds = %60, %36
  %94 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %95 = call i32 @strbuf_addstr(%struct.strbuf* %94, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %64
  %97 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %98 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %3, align 8
  store i8* %99, i8** %100, align 8
  %101 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %102 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %105 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load i8**, i8*** %4, align 8
  store i8* %108, i8** %109, align 8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.strbuf*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @BUG(i8*, i32, i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @split_ident_line(%struct.ident_split*, i8*, i32) #1

declare dso_local i8* @anonymize_mem(i32*, i32, i64, i64*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
