; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_queue_commands_from_cert.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_queue_commands_from_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.strbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [64 x i8] c"protocol error: got both push certificate and unsigned commands\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"malformed push certificate %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command**, %struct.strbuf*)* @queue_commands_from_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_commands_from_cert(%struct.command** %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.command**, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.command** %0, %struct.command*** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %8 = load %struct.command**, %struct.command*** %3, align 8
  %9 = load %struct.command*, %struct.command** %8, align 8
  %10 = icmp ne %struct.command* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @strstr(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 100, i8* %23)
  br label %28

25:                                               ; preds = %13
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @parse_signature(i8* %34, i32 %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %31, i64 %39
  store i8* %40, i8** %6, align 8
  br label %41

41:                                               ; preds = %81, %28
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i8* @memchr(i8* %46, i8 signext 10, i32 %52)
  store i8* %53, i8** %7, align 8
  %54 = load %struct.command**, %struct.command*** %3, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %45
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  br label %70

64:                                               ; preds = %45
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  br label %70

70:                                               ; preds = %64, %58
  %71 = phi i64 [ %63, %58 ], [ %69, %64 ]
  %72 = trunc i64 %71 to i32
  %73 = call %struct.command** @queue_command(%struct.command** %54, i8* %55, i32 %72)
  store %struct.command** %73, %struct.command*** %3, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  br label %81

79:                                               ; preds = %70
  %80 = load i8*, i8** %6, align 8
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi i8* [ %78, %76 ], [ %80, %79 ]
  store i8* %82, i8** %5, align 8
  br label %41

83:                                               ; preds = %41
  ret void
}

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @parse_signature(i8*, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local %struct.command** @queue_command(%struct.command**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
