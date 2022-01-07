; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_shortlog.c_parse_stdin_author.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_shortlog.c_parse_stdin_author.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shortlog = type { i64, i32 }
%struct.strbuf = type { i32 }
%struct.ident_split = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c" <%.*s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shortlog*, %struct.strbuf*, i8*)* @parse_stdin_author to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stdin_author(%struct.shortlog* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shortlog*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ident_split, align 8
  store %struct.shortlog* %0, %struct.shortlog** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i64 @split_ident_line(%struct.ident_split* %12, i8* %13, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %12, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %12, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  %24 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %12, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %12, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %25 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  store i64 %30, i64* %10, align 8
  %31 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %12, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %12, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %32 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  store i64 %37, i64* %11, align 8
  %38 = load %struct.shortlog*, %struct.shortlog** %5, align 8
  %39 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %38, i32 0, i32 1
  %40 = call i32 @map_user(i32* %39, i8** %8, i64* %11, i8** %9, i64* %10)
  %41 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @strbuf_add(%struct.strbuf* %41, i8* %42, i64 %43)
  %45 = load %struct.shortlog*, %struct.shortlog** %5, align 8
  %46 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %19
  %50 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %51 = load i64, i64* %11, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @strbuf_addf(%struct.strbuf* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %53)
  br label %55

55:                                               ; preds = %49, %19
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @split_ident_line(%struct.ident_split*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @map_user(i32*, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
