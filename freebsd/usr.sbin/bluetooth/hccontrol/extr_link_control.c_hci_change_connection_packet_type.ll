; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_change_connection_packet_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_change_connection_packet_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@NG_HCI_OGF_LINK_CONTROL = common dso_local global i32 0, align 4
@NG_HCI_OCF_CHANGE_CON_PKT_TYPE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NG_HCI_EVENT_CON_PKT_TYPE_CHANGED = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Connection handle: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Packet type: %#04x\0A\00", align 1
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_change_connection_packet_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_change_connection_packet_type(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %11, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %57 [
    i32 2, label %16
  ]

16:                                               ; preds = %3
  %17 = load i8**, i8*** %7, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 3839
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %22, %16
  %29 = load i32, i32* @USAGE, align 4
  store i32 %29, i32* %4, align 4
  br label %138

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 4095
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @htole16(i8* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i8**, i8*** %7, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @sscanf(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @USAGE, align 4
  store i32 %46, i32* %4, align 4
  br label %138

47:                                               ; preds = %30
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 65535
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @htole16(i8* %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  br label %59

57:                                               ; preds = %3
  %58 = load i32, i32* @USAGE, align 4
  store i32 %58, i32* %4, align 4
  br label %138

59:                                               ; preds = %47
  store i32 512, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @NG_HCI_OGF_LINK_CONTROL, align 4
  %62 = load i32, i32* @NG_HCI_OCF_CHANGE_CON_PKT_TYPE, align 4
  %63 = call i32 @NG_HCI_OPCODE(i32 %61, i32 %62)
  %64 = bitcast %struct.TYPE_6__* %10 to i8*
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %66 = call i64 @hci_request(i32 %60, i32 %63, i8* %64, i32 16, i8* %65, i32* %8)
  %67 = load i64, i64* @ERROR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i64, i64* @ERROR, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %138

72:                                               ; preds = %59
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %74 = load i8, i8* %73, align 16
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @FAILED, align 4
  store i32 %78, i32* %4, align 4
  br label %138

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %135, %79
  store i32 512, i32* %8, align 4
  %81 = load i32, i32* %5, align 4
  %82 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %83 = call i64 @hci_recv(i32 %81, i8* %82, i32* %8)
  %84 = load i64, i64* @ERROR, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i64, i64* @ERROR, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %4, align 4
  br label %138

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp ult i64 %91, 8
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* @EIO, align 4
  store i32 %94, i32* @errno, align 4
  %95 = load i64, i64* @ERROR, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %4, align 4
  br label %138

97:                                               ; preds = %89
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NG_HCI_EVENT_CON_PKT_TYPE_CHANGED, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %135

103:                                              ; preds = %97
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 1
  %106 = bitcast %struct.TYPE_4__* %105 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %106, %struct.TYPE_5__** %12, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %103
  %112 = load i32, i32* @stdout, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @hci_status2str(i32 %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %116, i32 %119)
  %121 = load i32, i32* @FAILED, align 4
  store i32 %121, i32* %4, align 4
  br label %138

122:                                              ; preds = %103
  %123 = load i32, i32* @stdout, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le16toh(i32 %126)
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @stdout, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le16toh(i32 %132)
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %136

135:                                              ; preds = %97
  br label %80

136:                                              ; preds = %122
  %137 = load i32, i32* @OK, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %111, %93, %86, %77, %69, %57, %45, %28
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i8* @htole16(i8*) #1

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
