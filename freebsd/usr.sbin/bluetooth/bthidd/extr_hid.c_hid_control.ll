; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_hid.c_hid_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_hid.c_hid_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Got handshake message with error response 0x%x from %s\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Device %s requested %s reset\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Device %s requested Suspend\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Device %s requested Exit Suspend\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Device %s unplugged virtual cable\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Device %s sent unknown HID_Control message 0x%x\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"Got unexpected message 0x%x on Control channel from %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hid_control(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  switch i32 %22, label %88 [
    i32 0, label %23
    i32 1, label %39
  ]

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 15
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i32, i32* @LOG_ERR, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @bt_ntoa(i32* %35, i32* null)
  %37 = call i32 (i32, i8*, i32, ...) @syslog(i32 %30, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %29, %23
  br label %97

39:                                               ; preds = %3
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 15
  switch i32 %43, label %78 [
    i32 0, label %44
    i32 1, label %45
    i32 2, label %45
    i32 3, label %58
    i32 4, label %64
    i32 5, label %70
  ]

44:                                               ; preds = %39
  br label %87

45:                                               ; preds = %39, %39
  %46 = load i32, i32* @LOG_WARNING, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @bt_ntoa(i32* %48, i32* null)
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 15
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %57 = call i32 (i32, i8*, i32, ...) @syslog(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49, i8* %56)
  br label %87

58:                                               ; preds = %39
  %59 = load i32, i32* @LOG_NOTICE, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @bt_ntoa(i32* %61, i32* null)
  %63 = call i32 (i32, i8*, i32, ...) @syslog(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  br label %87

64:                                               ; preds = %39
  %65 = load i32, i32* @LOG_NOTICE, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @bt_ntoa(i32* %67, i32* null)
  %69 = call i32 (i32, i8*, i32, ...) @syslog(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  br label %87

70:                                               ; preds = %39
  %71 = load i32, i32* @LOG_NOTICE, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @bt_ntoa(i32* %73, i32* null)
  %75 = call i32 (i32, i8*, i32, ...) @syslog(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = call i32 @session_close(%struct.TYPE_4__* %76)
  br label %87

78:                                               ; preds = %39
  %79 = load i32, i32* @LOG_WARNING, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @bt_ntoa(i32* %81, i32* null)
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i32, ...) @syslog(i32 %79, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %78, %70, %64, %58, %45, %44
  br label %97

88:                                               ; preds = %3
  %89 = load i32, i32* @LOG_WARNING, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i32 @bt_ntoa(i32* %94, i32* null)
  %96 = call i32 (i32, i8*, i32, ...) @syslog(i32 %89, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %88, %87, %38
  ret i64 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, ...) #1

declare dso_local i32 @bt_ntoa(i32*, i32*) #1

declare dso_local i32 @session_close(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
