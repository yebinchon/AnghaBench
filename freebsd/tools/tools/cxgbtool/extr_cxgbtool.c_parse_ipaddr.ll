; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_parse_ipaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_parse_ipaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @parse_ipaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ipaddr(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  store i32 -1, i32* %12, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %9, align 8
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @inet_aton(i8* %20, %struct.in_addr* %10)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8
  store i8 47, i8* %27, align 1
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32*, i32** %6, align 8
  store i32 0, i32* %29, align 4
  store i32 -1, i32* %4, align 4
  br label %62

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ntohl(i32 %32)
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i32 @strtoul(i8* %39, i8** %8, i32 10)
  store i32 %40, i32* %11, align 4
  %41 = load i8*, i8** %9, align 8
  store i8 47, i8* %41, align 1
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = icmp eq i8* %42, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %37
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = icmp ugt i32 %52, 32
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %46, %37
  store i32 -1, i32* %4, align 4
  br label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = sub i32 32, %56
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %30
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %54, %28
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @inet_aton(i8*, %struct.in_addr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
