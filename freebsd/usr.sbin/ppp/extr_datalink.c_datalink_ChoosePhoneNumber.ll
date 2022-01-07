; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_ChoosePhoneNumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_ChoosePhoneNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"[NONE]\00", align 1
@LogCHAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Phone: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @datalink_ChoosePhoneNumber(%struct.datalink* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.datalink*, align 8
  %4 = alloca i8*, align 8
  store %struct.datalink* %0, %struct.datalink** %3, align 8
  %5 = load %struct.datalink*, %struct.datalink** %3, align 8
  %6 = getelementptr inbounds %struct.datalink, %struct.datalink* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %56

10:                                               ; preds = %1
  %11 = load %struct.datalink*, %struct.datalink** %3, align 8
  %12 = getelementptr inbounds %struct.datalink, %struct.datalink* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %10
  %17 = load %struct.datalink*, %struct.datalink** %3, align 8
  %18 = getelementptr inbounds %struct.datalink, %struct.datalink* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.datalink*, %struct.datalink** %3, align 8
  %22 = getelementptr inbounds %struct.datalink, %struct.datalink* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @strncpy(i8* %20, i32 %25, i32 7)
  %27 = load %struct.datalink*, %struct.datalink** %3, align 8
  %28 = getelementptr inbounds %struct.datalink, %struct.datalink* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 7
  store i8 0, i8* %31, align 1
  %32 = load %struct.datalink*, %struct.datalink** %3, align 8
  %33 = getelementptr inbounds %struct.datalink, %struct.datalink* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %82

40:                                               ; preds = %16
  %41 = load %struct.datalink*, %struct.datalink** %3, align 8
  %42 = getelementptr inbounds %struct.datalink, %struct.datalink* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.datalink*, %struct.datalink** %3, align 8
  %46 = getelementptr inbounds %struct.datalink, %struct.datalink* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  br label %48

48:                                               ; preds = %40, %10
  %49 = load %struct.datalink*, %struct.datalink** %3, align 8
  %50 = getelementptr inbounds %struct.datalink, %struct.datalink* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = call i8* @strsep(i8** %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.datalink*, %struct.datalink** %3, align 8
  %54 = getelementptr inbounds %struct.datalink, %struct.datalink* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  br label %56

56:                                               ; preds = %48, %1
  %57 = load %struct.datalink*, %struct.datalink** %3, align 8
  %58 = getelementptr inbounds %struct.datalink, %struct.datalink* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i8* @strsep(i8** %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i8*, i8** %4, align 8
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i8* [ %66, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %67 ]
  %70 = load %struct.datalink*, %struct.datalink** %3, align 8
  %71 = getelementptr inbounds %struct.datalink, %struct.datalink* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  store i8* %69, i8** %72, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32, i32* @LogCHAT, align 4
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @log_Printf(i32 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %76, %68
  %81 = load i8*, i8** %4, align 8
  store i8* %81, i8** %2, align 8
  br label %82

82:                                               ; preds = %80, %39
  %83 = load i8*, i8** %2, align 8
  ret i8* %83
}

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
