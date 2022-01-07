; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpcontrol/extr_search.c_print_service_class_id_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpcontrol/extr_search.c_print_service_class_id_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Invalid Service Class ID List. Too short, len=%zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Invalid Service Class ID List. Not a sequence, type=%#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Invalid Service Class ID List. Too long len=%d\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"\09%s (%#4.4x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\09%#8.8x\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\09%#8.8x-%4.4x-%4.4x-%4.4x-%4.4x%8.8x\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Invalid Service Class ID List. Not a UUID, type=%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @print_service_class_id_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_service_class_id_list(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = ptrtoint i32* %9 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  %15 = icmp slt i64 %14, 2
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = ptrtoint i32* %18 to i64
  %21 = ptrtoint i32* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %126

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @SDP_GET8(i32 %26, i32* %27)
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %42 [
    i32 131, label %30
    i32 133, label %34
    i32 132, label %38
  ]

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @SDP_GET8(i32 %31, i32* %32)
  br label %46

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @SDP_GET16(i32 %35, i32* %36)
  br label %46

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @SDP_GET32(i32 %39, i32* %40)
  br label %46

42:                                               ; preds = %25
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %126

46:                                               ; preds = %38, %34, %30
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = ptrtoint i32* %49 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = icmp sgt i64 %48, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i32, i32* @stderr, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %126

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %125, %60
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = icmp ult i32* %62, %63
  br i1 %64, label %65, label %126

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @SDP_GET8(i32 %66, i32* %67)
  %69 = load i32, i32* %5, align 4
  switch i32 %69, label %121 [
    i32 129, label %70
    i32 128, label %79
    i32 130, label %86
  ]

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @SDP_GET16(i32 %71, i32* %72)
  %74 = load i32, i32* @stdout, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i8* @sdp_uuid2desc(i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %76, i32 %77)
  br label %125

79:                                               ; preds = %65
  %80 = load i32, i32* %7, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @SDP_GET32(i32 %80, i32* %81)
  %83 = load i32, i32* @stdout, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  br label %125

86:                                               ; preds = %65
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @SDP_GET_UUID128(%struct.TYPE_3__* %8, i32* %87)
  %89 = load i32, i32* @stdout, align 4
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ntohl(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ntohs(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 6
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ntohs(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ntohs(i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 10
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ntohs(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 12
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ntohl(i32 %118)
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %94, i32 %99, i32 %104, i32 %109, i32 %114, i32 %119)
  br label %125

121:                                              ; preds = %65
  %122 = load i32, i32* @stderr, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  br label %126

125:                                              ; preds = %86, %79, %70
  br label %61

126:                                              ; preds = %16, %42, %56, %121, %61
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @SDP_GET8(i32, i32*) #1

declare dso_local i32 @SDP_GET16(i32, i32*) #1

declare dso_local i32 @SDP_GET32(i32, i32*) #1

declare dso_local i8* @sdp_uuid2desc(i32) #1

declare dso_local i32 @SDP_GET_UUID128(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
