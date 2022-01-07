; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uathload/extr_uathload.c_getdevname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uathload/extr_uathload.c_getdevname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"ugen\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s/usb/%s.1\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s/usb/%s.2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @getdevname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getdevname(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %53

17:                                               ; preds = %3
  %18 = load i8*, i8** %11, align 8
  %19 = call i8* @dirname(i8* %18)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @strdup(i8* %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @free(i8* %25)
  store i32 -1, i32* %4, align 4
  br label %53

27:                                               ; preds = %17
  %28 = load i8*, i8** %9, align 8
  %29 = call i8* @basename(i8* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @free(i8* %36)
  store i32 -1, i32* %4, align 4
  br label %53

38:                                               ; preds = %27
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @snprintf(i8* %41, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @snprintf(i8* %45, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %47)
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @free(i8* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %38, %33, %24, %16
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
