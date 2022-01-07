; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_create_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_create_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.hostent = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@NG_HCI_PKT_DM1 = common dso_local global i32 0, align 4
@NG_HCI_PKT_DH1 = common dso_local global i32 0, align 4
@NG_HCI_PKT_DM3 = common dso_local global i32 0, align 4
@NG_HCI_PKT_DH3 = common dso_local global i32 0, align 4
@NG_HCI_PKT_DM5 = common dso_local global i32 0, align 4
@NG_HCI_SCAN_REP_MODE0 = common dso_local global i32 0, align 4
@NG_HCI_MANDATORY_PAGE_SCAN_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@NG_HCI_OGF_LINK_CONTROL = common dso_local global i32 0, align 4
@NG_HCI_OCF_CREATE_CON = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_create_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_create_connection(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.hostent*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %11, align 8
  %16 = call i32 @memset(%struct.TYPE_6__* %10, i32 0, i32 24)
  %17 = load i32, i32* @NG_HCI_PKT_DM1, align 4
  %18 = load i32, i32* @NG_HCI_PKT_DH1, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @NG_HCI_PKT_DM3, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NG_HCI_PKT_DH3, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @NG_HCI_PKT_DM5, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @htole16(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @NG_HCI_SCAN_REP_MODE0, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @NG_HCI_MANDATORY_PAGE_SCAN_MODE, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %158 [
    i32 6, label %36
    i32 5, label %50
    i32 4, label %67
    i32 3, label %85
    i32 2, label %103
    i32 1, label %136
  ]

36:                                               ; preds = %3
  %37 = load i8**, i8*** %7, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 5
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @sscanf(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @USAGE, align 4
  store i32 %43, i32* %4, align 4
  br label %247

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %3, %44
  %51 = load i8**, i8*** %7, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 4
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @sscanf(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @USAGE, align 4
  store i32 %57, i32* %4, align 4
  br label %247

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 65535
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @htole16(i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %3, %58
  %68 = load i8**, i8*** %7, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 3
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @sscanf(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 3
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %73, %67
  %80 = load i32, i32* @USAGE, align 4
  store i32 %80, i32* %4, align 4
  br label %247

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, 255
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %3, %81
  %86 = load i8**, i8*** %7, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @sscanf(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = icmp sgt i32 %95, 2
  br i1 %96, label %97, label %99

97:                                               ; preds = %94, %91, %85
  %98 = load i32, i32* @USAGE, align 4
  store i32 %98, i32* %4, align 4
  br label %247

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %100, 255
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %3, %99
  %104 = load i8**, i8*** %7, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @sscanf(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @USAGE, align 4
  store i32 %110, i32* %4, align 4
  br label %247

111:                                              ; preds = %103
  %112 = load i32, i32* @NG_HCI_PKT_DM1, align 4
  %113 = load i32, i32* @NG_HCI_PKT_DH1, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @NG_HCI_PKT_DM3, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @NG_HCI_PKT_DH3, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @NG_HCI_PKT_DM5, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %111
  %126 = load i32, i32* @USAGE, align 4
  store i32 %126, i32* %4, align 4
  br label %247

127:                                              ; preds = %111
  %128 = load i32, i32* %8, align 4
  %129 = and i32 %128, 65535
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @htole16(i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %3, %127
  %137 = load i8**, i8*** %7, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  %141 = call i32 @bt_aton(i8* %139, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %157, label %143

143:                                              ; preds = %136
  store %struct.hostent* null, %struct.hostent** %12, align 8
  %144 = load i8**, i8*** %7, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 0
  %146 = load i8*, i8** %145, align 8
  %147 = call %struct.hostent* @bt_gethostbyname(i8* %146)
  store %struct.hostent* %147, %struct.hostent** %12, align 8
  %148 = icmp eq %struct.hostent* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* @USAGE, align 4
  store i32 %150, i32* %4, align 4
  br label %247

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  %153 = load %struct.hostent*, %struct.hostent** %12, align 8
  %154 = getelementptr inbounds %struct.hostent, %struct.hostent* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @memcpy(i32* %152, i32 %155, i32 4)
  br label %157

157:                                              ; preds = %151, %136
  br label %160

158:                                              ; preds = %3
  %159 = load i32, i32* @USAGE, align 4
  store i32 %159, i32* %4, align 4
  br label %247

160:                                              ; preds = %157
  store i32 512, i32* %8, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @NG_HCI_OGF_LINK_CONTROL, align 4
  %163 = load i32, i32* @NG_HCI_OCF_CREATE_CON, align 4
  %164 = call i32 @NG_HCI_OPCODE(i32 %162, i32 %163)
  %165 = bitcast %struct.TYPE_6__* %10 to i8*
  %166 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %167 = call i64 @hci_request(i32 %161, i32 %164, i8* %165, i32 24, i8* %166, i32* %8)
  %168 = load i64, i64* @ERROR, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %160
  %171 = load i64, i64* @ERROR, align 8
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %4, align 4
  br label %247

173:                                              ; preds = %160
  %174 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %175 = load i8, i8* %174, align 16
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load i32, i32* @FAILED, align 4
  store i32 %179, i32* %4, align 4
  br label %247

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %244, %180
  store i32 512, i32* %8, align 4
  %182 = load i32, i32* %5, align 4
  %183 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %184 = call i64 @hci_recv(i32 %182, i8* %183, i32* %8)
  %185 = load i64, i64* @ERROR, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load i64, i64* @ERROR, align 8
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %4, align 4
  br label %247

190:                                              ; preds = %181
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = icmp ult i64 %192, 8
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i32, i32* @EIO, align 4
  store i32 %195, i32* @errno, align 4
  %196 = load i64, i64* @ERROR, align 8
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %4, align 4
  br label %247

198:                                              ; preds = %190
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @NG_HCI_EVENT_CON_COMPL, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %244

204:                                              ; preds = %198
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 1
  %207 = bitcast %struct.TYPE_5__* %206 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %207, %struct.TYPE_7__** %13, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %204
  %213 = load i32, i32* @stdout, align 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @hci_status2str(i32 %216)
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i32, i8*, ...) @fprintf(i32 %213, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %217, i32 %220)
  %222 = load i32, i32* @FAILED, align 4
  store i32 %222, i32* %4, align 4
  br label %247

223:                                              ; preds = %204
  %224 = load i32, i32* @stdout, align 4
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 3
  %227 = call i8* @hci_bdaddr2str(i32* %226)
  %228 = call i32 (i32, i8*, ...) @fprintf(i32 %224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %227)
  %229 = load i32, i32* @stdout, align 4
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @le16toh(i32 %232)
  %234 = call i32 (i32, i8*, ...) @fprintf(i32 %229, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @stdout, align 4
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i8* @hci_encrypt2str(i32 %238, i32 0)
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i32, i8*, ...) @fprintf(i32 %235, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %239, i32 %242)
  br label %245

244:                                              ; preds = %198
  br label %181

245:                                              ; preds = %223
  %246 = load i32, i32* @OK, align 4
  store i32 %246, i32* %4, align 4
  br label %247

247:                                              ; preds = %245, %212, %194, %187, %178, %170, %158, %149, %125, %109, %97, %79, %56, %42
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @bt_aton(i8*, i32*) #1

declare dso_local %struct.hostent* @bt_gethostbyname(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

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
