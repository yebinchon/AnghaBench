; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpcontrol/extr_search.c_print_protocol_descriptor_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpcontrol/extr_search.c_print_protocol_descriptor_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Invalid Protocol Descriptor List. Too short, len=%zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Invalid Protocol Descriptor List. Not a sequence, type=%#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Invalid Protocol Descriptor List. Too long, len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @print_protocol_descriptor_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_protocol_descriptor_list(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = ptrtoint i32* %7 to i64
  %10 = ptrtoint i32* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  %13 = icmp slt i64 %12, 2
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = ptrtoint i32* %16 to i64
  %19 = ptrtoint i32* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %110

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @SDP_GET8(i32 %25, i32* %26)
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %41 [
    i32 128, label %29
    i32 130, label %33
    i32 129, label %37
  ]

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @SDP_GET8(i32 %30, i32* %31)
  br label %45

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @SDP_GET16(i32 %34, i32* %35)
  br label %45

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @SDP_GET32(i32 %38, i32* %39)
  br label %45

41:                                               ; preds = %24
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %110

45:                                               ; preds = %37, %33, %29
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = icmp sgt i64 %47, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %110

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %99, %59
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = icmp ult i32* %61, %62
  br i1 %63, label %64, label %110

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @SDP_GET8(i32 %65, i32* %66)
  %68 = load i32, i32* %5, align 4
  switch i32 %68, label %81 [
    i32 128, label %69
    i32 130, label %73
    i32 129, label %77
  ]

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @SDP_GET8(i32 %70, i32* %71)
  br label %85

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @SDP_GET16(i32 %74, i32* %75)
  br label %85

77:                                               ; preds = %64
  %78 = load i32, i32* %6, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @SDP_GET32(i32 %78, i32* %79)
  br label %85

81:                                               ; preds = %64
  %82 = load i32, i32* @stderr, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %110

85:                                               ; preds = %77, %73, %69
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = load i32*, i32** %4, align 8
  %89 = load i32*, i32** %3, align 8
  %90 = ptrtoint i32* %88 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = icmp sgt i64 %87, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load i32, i32* @stderr, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @fprintf(i32 %96, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %110

99:                                               ; preds = %85
  %100 = load i32*, i32** %3, align 8
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @print_protocol_descriptor(i32* %100, i32* %104)
  %106 = load i32, i32* %6, align 4
  %107 = load i32*, i32** %3, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %3, align 8
  br label %60

110:                                              ; preds = %14, %41, %55, %81, %95, %60
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @SDP_GET8(i32, i32*) #1

declare dso_local i32 @SDP_GET16(i32, i32*) #1

declare dso_local i32 @SDP_GET32(i32, i32*) #1

declare dso_local i32 @print_protocol_descriptor(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
