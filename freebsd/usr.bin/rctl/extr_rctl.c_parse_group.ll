; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_parse_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_parse_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"malformed rule '%s': unknown group '%s'\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"malformed rule '%s': trailing characters after numerical id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*)* @parse_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_group(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.group*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.group* @getgrnam(i8* %10)
  store %struct.group* %11, %struct.group** %9, align 8
  %12 = load %struct.group*, %struct.group** %9, align 8
  %13 = icmp ne %struct.group* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.group*, %struct.group** %9, align 8
  %16 = getelementptr inbounds %struct.group, %struct.group* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %4, align 4
  br label %45

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @isnumber(i8 signext %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  store i32 1, i32* %4, align 4
  br label %45

29:                                               ; preds = %19
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strtod(i8* %30, i8** %8)
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 1, i32* %4, align 4
  br label %45

44:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %41, %25, %14
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @isnumber(i8 signext) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @strtod(i8*, i8**) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
