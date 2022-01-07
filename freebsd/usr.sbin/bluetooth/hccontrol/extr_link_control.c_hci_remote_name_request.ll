; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_remote_name_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_remote_name_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.hostent = type { i32 }
%struct.TYPE_6__ = type { i32, i8*, i32 }

@NG_HCI_SCAN_REP_MODE0 = common dso_local global i32 0, align 4
@NG_HCI_MANDATORY_PAGE_SCAN_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NG_HCI_OGF_LINK_CONTROL = common dso_local global i32 0, align 4
@NG_HCI_OCF_REMOTE_NAME_REQ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NG_HCI_EVENT_REMOTE_NAME_REQ_COMPL = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"BD_ADDR: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_remote_name_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_remote_name_request(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.hostent*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %15 = bitcast i8* %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %11, align 8
  %16 = call i32 @memset(%struct.TYPE_5__* %10, i32 0, i32 16)
  %17 = load i32, i32* @NG_HCI_SCAN_REP_MODE0, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @NG_HCI_MANDATORY_PAGE_SCAN_MODE, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %96 [
    i32 4, label %22
    i32 3, label %38
    i32 2, label %56
    i32 1, label %74
  ]

22:                                               ; preds = %3
  %23 = load i8**, i8*** %7, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 3
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @USAGE, align 4
  store i32 %29, i32* %4, align 4
  br label %175

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 65535
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @htole16(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %3, %30
  %39 = load i8**, i8*** %7, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @sscanf(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 3
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %44, %38
  %51 = load i32, i32* @USAGE, align 4
  store i32 %51, i32* %4, align 4
  br label %175

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 255
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %3, %52
  %57 = load i8**, i8*** %7, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @sscanf(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 2
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %62, %56
  %69 = load i32, i32* @USAGE, align 4
  store i32 %69, i32* %4, align 4
  br label %175

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 255
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %3, %70
  %75 = load i8**, i8*** %7, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %79 = call i32 @bt_aton(i8* %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %74
  store %struct.hostent* null, %struct.hostent** %12, align 8
  %82 = load i8**, i8*** %7, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call %struct.hostent* @bt_gethostbyname(i8* %84)
  store %struct.hostent* %85, %struct.hostent** %12, align 8
  %86 = icmp eq %struct.hostent* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @USAGE, align 4
  store i32 %88, i32* %4, align 4
  br label %175

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %91 = load %struct.hostent*, %struct.hostent** %12, align 8
  %92 = getelementptr inbounds %struct.hostent, %struct.hostent* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @memcpy(i32* %90, i32 %93, i32 4)
  br label %95

95:                                               ; preds = %89, %74
  br label %98

96:                                               ; preds = %3
  %97 = load i32, i32* @USAGE, align 4
  store i32 %97, i32* %4, align 4
  br label %175

98:                                               ; preds = %95
  store i32 512, i32* %8, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @NG_HCI_OGF_LINK_CONTROL, align 4
  %101 = load i32, i32* @NG_HCI_OCF_REMOTE_NAME_REQ, align 4
  %102 = call i32 @NG_HCI_OPCODE(i32 %100, i32 %101)
  %103 = bitcast %struct.TYPE_5__* %10 to i8*
  %104 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %105 = call i64 @hci_request(i32 %99, i32 %102, i8* %103, i32 16, i8* %104, i32* %8)
  %106 = load i64, i64* @ERROR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i64, i64* @ERROR, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %4, align 4
  br label %175

111:                                              ; preds = %98
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %113 = load i8, i8* %112, align 16
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @FAILED, align 4
  store i32 %117, i32* %4, align 4
  br label %175

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %172, %118
  store i32 512, i32* %8, align 4
  %120 = load i32, i32* %5, align 4
  %121 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %122 = call i64 @hci_recv(i32 %120, i8* %121, i32* %8)
  %123 = load i64, i64* @ERROR, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i64, i64* @ERROR, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %4, align 4
  br label %175

128:                                              ; preds = %119
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp ult i64 %130, 8
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* @EIO, align 4
  store i32 %133, i32* @errno, align 4
  %134 = load i64, i64* @ERROR, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %4, align 4
  br label %175

136:                                              ; preds = %128
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @NG_HCI_EVENT_REMOTE_NAME_REQ_COMPL, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %172

142:                                              ; preds = %136
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 1
  %145 = bitcast %struct.TYPE_7__* %144 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %145, %struct.TYPE_6__** %13, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %142
  %151 = load i32, i32* @stdout, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @hci_status2str(i32 %154)
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %155, i32 %158)
  %160 = load i32, i32* @FAILED, align 4
  store i32 %160, i32* %4, align 4
  br label %175

161:                                              ; preds = %142
  %162 = load i32, i32* @stdout, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = call i8* @hci_bdaddr2str(i32* %164)
  %166 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %165)
  %167 = load i32, i32* @stdout, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %170)
  br label %173

172:                                              ; preds = %136
  br label %119

173:                                              ; preds = %161
  %174 = load i32, i32* @OK, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %173, %150, %132, %125, %116, %108, %96, %87, %68, %50, %28
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @bt_aton(i8*, i32*) #1

declare dso_local %struct.hostent* @bt_gethostbyname(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @hci_request(i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @NG_HCI_OPCODE(i32, i32) #1

declare dso_local i64 @hci_recv(i32, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @hci_status2str(i32) #1

declare dso_local i8* @hci_bdaddr2str(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
