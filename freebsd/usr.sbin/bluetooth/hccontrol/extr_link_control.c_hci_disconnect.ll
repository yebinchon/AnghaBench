; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@USAGE = common dso_local global i32 0, align 4
@NG_HCI_OGF_LINK_CONTROL = common dso_local global i32 0, align 4
@NG_HCI_OCF_DISCON = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NG_HCI_EVENT_DISCON_COMPL = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Connection handle: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Reason: %s [%#02x]\0A\00", align 1
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_disconnect(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %14 = bitcast i8* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %11, align 8
  %15 = call i32 @memset(%struct.TYPE_6__* %10, i32 0, i32 8)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 19, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %58 [
    i32 2, label %18
    i32 1, label %36
  ]

18:                                               ; preds = %3
  %19 = load i8**, i8*** %7, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 255
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %24, %18
  %31 = load i32, i32* @USAGE, align 4
  store i32 %31, i32* %4, align 4
  br label %142

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %3, %32
  %37 = load i8**, i8*** %7, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @sscanf(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 3839
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %42, %36
  %49 = load i32, i32* @USAGE, align 4
  store i32 %49, i32* %4, align 4
  br label %142

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 4095
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @htole16(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  br label %60

58:                                               ; preds = %3
  %59 = load i32, i32* @USAGE, align 4
  store i32 %59, i32* %4, align 4
  br label %142

60:                                               ; preds = %50
  store i32 512, i32* %8, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @NG_HCI_OGF_LINK_CONTROL, align 4
  %63 = load i32, i32* @NG_HCI_OCF_DISCON, align 4
  %64 = call i32 @NG_HCI_OPCODE(i32 %62, i32 %63)
  %65 = bitcast %struct.TYPE_6__* %10 to i8*
  %66 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %67 = call i64 @hci_request(i32 %61, i32 %64, i8* %65, i32 8, i8* %66, i32* %8)
  %68 = load i64, i64* @ERROR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i64, i64* @ERROR, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %4, align 4
  br label %142

73:                                               ; preds = %60
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %75 = load i8, i8* %74, align 16
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @FAILED, align 4
  store i32 %79, i32* %4, align 4
  br label %142

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %139, %80
  store i32 512, i32* %8, align 4
  %82 = load i32, i32* %5, align 4
  %83 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %84 = call i64 @hci_recv(i32 %82, i8* %83, i32* %8)
  %85 = load i64, i64* @ERROR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i64, i64* @ERROR, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %4, align 4
  br label %142

90:                                               ; preds = %81
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %92, 8
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @EIO, align 4
  store i32 %95, i32* @errno, align 4
  %96 = load i64, i64* @ERROR, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %4, align 4
  br label %142

98:                                               ; preds = %90
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @NG_HCI_EVENT_DISCON_COMPL, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %139

104:                                              ; preds = %98
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 1
  %107 = bitcast %struct.TYPE_5__* %106 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %12, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %104
  %113 = load i32, i32* @stdout, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @hci_status2str(i32 %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %117, i32 %120)
  %122 = load i32, i32* @FAILED, align 4
  store i32 %122, i32* %4, align 4
  br label %142

123:                                              ; preds = %104
  %124 = load i32, i32* @stdout, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le16toh(i32 %127)
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @stdout, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @hci_status2str(i32 %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %134, i32 %137)
  br label %140

139:                                              ; preds = %98
  br label %81

140:                                              ; preds = %123
  %141 = load i32, i32* @OK, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %112, %94, %87, %78, %70, %58, %48, %30
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i64 @hci_request(i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @NG_HCI_OPCODE(i32, i32) #1

declare dso_local i64 @hci_recv(i32, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @hci_status2str(i32) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
