; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_add_sco_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_add_sco_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@NG_HCI_PKT_HV1 = common dso_local global i32 0, align 4
@NG_HCI_PKT_HV2 = common dso_local global i32 0, align 4
@NG_HCI_PKT_HV3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NG_HCI_OGF_LINK_CONTROL = common dso_local global i32 0, align 4
@NG_HCI_OCF_ADD_SCO_CON = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NG_HCI_EVENT_CON_COMPL = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"BD_ADDR: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Connection handle: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Encryption mode: %s [%d]\0A\00", align 1
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_add_sco_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_add_sco_connection(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %14 = bitcast i8* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %11, align 8
  %15 = call i32 @memset(%struct.TYPE_7__* %10, i32 0, i32 8)
  %16 = load i32, i32* @NG_HCI_PKT_HV1, align 4
  %17 = load i32, i32* @NG_HCI_PKT_HV2, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NG_HCI_PKT_HV3, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @htole16(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %83 [
    i32 2, label %25
    i32 1, label %57
  ]

25:                                               ; preds = %3
  %26 = load i8**, i8*** %7, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @USAGE, align 4
  store i32 %32, i32* %4, align 4
  br label %172

33:                                               ; preds = %25
  %34 = load i32, i32* @NG_HCI_PKT_HV1, align 4
  %35 = load i32, i32* @NG_HCI_PKT_HV2, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @NG_HCI_PKT_HV3, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @USAGE, align 4
  store i32 %44, i32* %4, align 4
  br label %172

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 4095
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = ptrtoint i8* %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @htole16(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %3, %45
  %58 = load i8**, i8*** %7, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @sscanf(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 3839
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %63, %57
  %70 = load i32, i32* @USAGE, align 4
  store i32 %70, i32* %4, align 4
  br label %172

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 4095
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = ptrtoint i8* %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @htole16(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  br label %85

83:                                               ; preds = %3
  %84 = load i32, i32* @USAGE, align 4
  store i32 %84, i32* %4, align 4
  br label %172

85:                                               ; preds = %71
  store i32 512, i32* %8, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @NG_HCI_OGF_LINK_CONTROL, align 4
  %88 = load i32, i32* @NG_HCI_OCF_ADD_SCO_CON, align 4
  %89 = call i32 @NG_HCI_OPCODE(i32 %87, i32 %88)
  %90 = bitcast %struct.TYPE_7__* %10 to i8*
  %91 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %92 = call i64 @hci_request(i32 %86, i32 %89, i8* %90, i32 8, i8* %91, i32* %8)
  %93 = load i64, i64* @ERROR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i64, i64* @ERROR, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %4, align 4
  br label %172

98:                                               ; preds = %85
  %99 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %100 = load i8, i8* %99, align 16
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @FAILED, align 4
  store i32 %104, i32* %4, align 4
  br label %172

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %169, %105
  store i32 512, i32* %8, align 4
  %107 = load i32, i32* %5, align 4
  %108 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %109 = call i64 @hci_recv(i32 %107, i8* %108, i32* %8)
  %110 = load i64, i64* @ERROR, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i64, i64* @ERROR, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %4, align 4
  br label %172

115:                                              ; preds = %106
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ult i64 %117, 8
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* @EIO, align 4
  store i32 %120, i32* @errno, align 4
  %121 = load i64, i64* @ERROR, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %4, align 4
  br label %172

123:                                              ; preds = %115
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @NG_HCI_EVENT_CON_COMPL, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %169

129:                                              ; preds = %123
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 1
  %132 = bitcast %struct.TYPE_5__* %131 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %132, %struct.TYPE_6__** %12, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %129
  %138 = load i32, i32* @stdout, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @hci_status2str(i32 %141)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %142, i32 %145)
  %147 = load i32, i32* @FAILED, align 4
  store i32 %147, i32* %4, align 4
  br label %172

148:                                              ; preds = %129
  %149 = load i32, i32* @stdout, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = call i8* @hci_bdaddr2str(i32* %151)
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %152)
  %154 = load i32, i32* @stdout, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le16toh(i32 %157)
  %159 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @stdout, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @hci_encrypt2str(i32 %163, i32 0)
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %164, i32 %167)
  br label %170

169:                                              ; preds = %123
  br label %106

170:                                              ; preds = %148
  %171 = load i32, i32* @OK, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %170, %137, %119, %112, %103, %95, %83, %69, %43, %31
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64 @hci_request(i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @NG_HCI_OPCODE(i32, i32) #1

declare dso_local i64 @hci_recv(i32, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @hci_status2str(i32) #1

declare dso_local i8* @hci_bdaddr2str(i32*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i8* @hci_encrypt2str(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
