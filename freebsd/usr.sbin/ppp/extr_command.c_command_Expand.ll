; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_command_Expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_command_Expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i8*, i64 }
%struct.bundle = type { %struct.TYPE_24__, %struct.TYPE_29__, %struct.TYPE_28__*, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { %struct.TYPE_33__, %struct.TYPE_19__, %struct.TYPE_22__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_27__ }
%struct.TYPE_32__ = type { i8*, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_34__, i32, %struct.TYPE_23__ }
%struct.TYPE_34__ = type { i64, i64, i64, i64 }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"%d:%02d:%02d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"AUTHNAME\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DNS0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DNS1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ENDDISC\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"HISADDR\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"HISADDR6\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"INTERFACE\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"IPOCTETSIN\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"IPOCTETSOUT\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"IPPACKETSIN\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"IPPACKETSOUT\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"IPV6OCTETSIN\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"IPV6OCTETSOUT\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"IPV6PACKETSIN\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"IPV6PACKETSOUT\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"LABEL\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"MYADDR\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"MYADDR6\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"IPV6PREFIX\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"OCTETSIN\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"OCTETSOUT\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"PACKETSIN\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"PACKETSOUT\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"PEER_ENDDISC\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"PROCESSID\00", align 1
@server = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@.str.26 = private unnamed_addr constant [9 x i8] c"SOCKNAME\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"UPTIME\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@Version = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @command_Expand(i8** %0, i32 %1, i8** %2, %struct.bundle* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.bundle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [20 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store %struct.bundle* %3, %struct.bundle** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %30

23:                                               ; preds = %6
  %24 = load i8**, i8*** %9, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strdup(i8* %26)
  %28 = load i8**, i8*** %7, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %27, i8** %29, align 8
  store i32 1, i32* %13, align 4
  br label %30

30:                                               ; preds = %23, %22
  %31 = load %struct.bundle*, %struct.bundle** %10, align 8
  %32 = call i32 @bundle_Uptime(%struct.bundle* %31)
  store i32 %32, i32* %14, align 4
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %34 = load i32, i32* %14, align 4
  %35 = sdiv i32 %34, 3600
  %36 = load i32, i32* %14, align 4
  %37 = sdiv i32 %36, 60
  %38 = srem i32 %37, 60
  %39 = load i32, i32* %14, align 4
  %40 = srem i32 %39, 60
  %41 = call i32 @snprintf(i8* %33, i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %40)
  %42 = load %struct.bundle*, %struct.bundle** %10, align 8
  %43 = getelementptr inbounds %struct.bundle, %struct.bundle* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %16, align 8
  %48 = load %struct.bundle*, %struct.bundle** %10, align 8
  %49 = getelementptr inbounds %struct.bundle, %struct.bundle* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %17, align 8
  %54 = load %struct.bundle*, %struct.bundle** %10, align 8
  %55 = getelementptr inbounds %struct.bundle, %struct.bundle* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %18, align 8
  %60 = load %struct.bundle*, %struct.bundle** %10, align 8
  %61 = getelementptr inbounds %struct.bundle, %struct.bundle* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %19, align 8
  %66 = load %struct.bundle*, %struct.bundle** %10, align 8
  %67 = getelementptr inbounds %struct.bundle, %struct.bundle* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %16, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %16, align 8
  %74 = load %struct.bundle*, %struct.bundle** %10, align 8
  %75 = getelementptr inbounds %struct.bundle, %struct.bundle* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %17, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %17, align 8
  %82 = load %struct.bundle*, %struct.bundle** %10, align 8
  %83 = getelementptr inbounds %struct.bundle, %struct.bundle* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %18, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %18, align 8
  %90 = load %struct.bundle*, %struct.bundle** %10, align 8
  %91 = getelementptr inbounds %struct.bundle, %struct.bundle* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %19, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %19, align 8
  br label %98

98:                                               ; preds = %575, %30
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %578

102:                                              ; preds = %98
  %103 = load i8**, i8*** %9, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @strdup(i8* %107)
  %109 = load i8**, i8*** %7, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  store i8* %108, i8** %112, align 8
  %113 = load i8**, i8*** %7, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.bundle*, %struct.bundle** %10, align 8
  %119 = getelementptr inbounds %struct.bundle, %struct.bundle* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @subst(i8* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %122)
  %124 = load i8**, i8*** %7, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  store i8* %123, i8** %127, align 8
  %128 = load i8**, i8*** %7, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.bundle*, %struct.bundle** %10, align 8
  %134 = getelementptr inbounds %struct.bundle, %struct.bundle* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = call i8* @substip(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  %142 = load i8**, i8*** %7, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  store i8* %141, i8** %145, align 8
  %146 = load i8**, i8*** %7, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.bundle*, %struct.bundle** %10, align 8
  %152 = getelementptr inbounds %struct.bundle, %struct.bundle* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @substip(i8* %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  %160 = load i8**, i8*** %7, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  store i8* %159, i8** %163, align 8
  %164 = load i8**, i8*** %7, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.bundle*, %struct.bundle** %10, align 8
  %170 = getelementptr inbounds %struct.bundle, %struct.bundle* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.bundle*, %struct.bundle** %10, align 8
  %177 = getelementptr inbounds %struct.bundle, %struct.bundle* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.bundle*, %struct.bundle** %10, align 8
  %184 = getelementptr inbounds %struct.bundle, %struct.bundle* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i8* @mp_Enddisc(i32 %175, i32 %182, i32 %189)
  %191 = call i8* @subst(i8* %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %190)
  %192 = load i8**, i8*** %7, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  store i8* %191, i8** %195, align 8
  %196 = load i8**, i8*** %7, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %196, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.bundle*, %struct.bundle** %10, align 8
  %202 = getelementptr inbounds %struct.bundle, %struct.bundle* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i8* @substip(i8* %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %205)
  %207 = load i8**, i8*** %7, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  store i8* %206, i8** %210, align 8
  %211 = load i8**, i8*** %7, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.bundle*, %struct.bundle** %10, align 8
  %217 = getelementptr inbounds %struct.bundle, %struct.bundle* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 2
  %220 = call i8* @substipv6(i8* %215, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %219)
  %221 = load i8**, i8*** %7, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  store i8* %220, i8** %224, align 8
  %225 = load i8**, i8*** %7, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8*, i8** %225, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.bundle*, %struct.bundle** %10, align 8
  %231 = getelementptr inbounds %struct.bundle, %struct.bundle* %230, i32 0, i32 2
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = call i8* @subst(i8* %229, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %234)
  %236 = load i8**, i8*** %7, align 8
  %237 = load i32, i32* %13, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  store i8* %235, i8** %239, align 8
  %240 = load i8**, i8*** %7, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.bundle*, %struct.bundle** %10, align 8
  %246 = getelementptr inbounds %struct.bundle, %struct.bundle* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = call i8* @substull(i8* %244, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 %250)
  %252 = load i8**, i8*** %7, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  store i8* %251, i8** %255, align 8
  %256 = load i8**, i8*** %7, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %256, i64 %258
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.bundle*, %struct.bundle** %10, align 8
  %262 = getelementptr inbounds %struct.bundle, %struct.bundle* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = call i8* @substull(i8* %260, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 %266)
  %268 = load i8**, i8*** %7, align 8
  %269 = load i32, i32* %13, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %268, i64 %270
  store i8* %267, i8** %271, align 8
  %272 = load i8**, i8*** %7, align 8
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  %276 = load i8*, i8** %275, align 8
  %277 = load %struct.bundle*, %struct.bundle** %10, align 8
  %278 = getelementptr inbounds %struct.bundle, %struct.bundle* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = call i8* @substull(i8* %276, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %282)
  %284 = load i8**, i8*** %7, align 8
  %285 = load i32, i32* %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8*, i8** %284, i64 %286
  store i8* %283, i8** %287, align 8
  %288 = load i8**, i8*** %7, align 8
  %289 = load i32, i32* %13, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8*, i8** %288, i64 %290
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.bundle*, %struct.bundle** %10, align 8
  %294 = getelementptr inbounds %struct.bundle, %struct.bundle* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = call i8* @substull(i8* %292, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 %298)
  %300 = load i8**, i8*** %7, align 8
  %301 = load i32, i32* %13, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8*, i8** %300, i64 %302
  store i8* %299, i8** %303, align 8
  %304 = load i8**, i8*** %7, align 8
  %305 = load i32, i32* %13, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %304, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = load %struct.bundle*, %struct.bundle** %10, align 8
  %310 = getelementptr inbounds %struct.bundle, %struct.bundle* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = call i8* @substull(i8* %308, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i64 %314)
  %316 = load i8**, i8*** %7, align 8
  %317 = load i32, i32* %13, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8*, i8** %316, i64 %318
  store i8* %315, i8** %319, align 8
  %320 = load i8**, i8*** %7, align 8
  %321 = load i32, i32* %13, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8*, i8** %320, i64 %322
  %324 = load i8*, i8** %323, align 8
  %325 = load %struct.bundle*, %struct.bundle** %10, align 8
  %326 = getelementptr inbounds %struct.bundle, %struct.bundle* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = call i8* @substull(i8* %324, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %330)
  %332 = load i8**, i8*** %7, align 8
  %333 = load i32, i32* %13, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8*, i8** %332, i64 %334
  store i8* %331, i8** %335, align 8
  %336 = load i8**, i8*** %7, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8*, i8** %336, i64 %338
  %340 = load i8*, i8** %339, align 8
  %341 = load %struct.bundle*, %struct.bundle** %10, align 8
  %342 = getelementptr inbounds %struct.bundle, %struct.bundle* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = call i8* @substull(i8* %340, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i64 %346)
  %348 = load i8**, i8*** %7, align 8
  %349 = load i32, i32* %13, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8*, i8** %348, i64 %350
  store i8* %347, i8** %351, align 8
  %352 = load i8**, i8*** %7, align 8
  %353 = load i32, i32* %13, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8*, i8** %352, i64 %354
  %356 = load i8*, i8** %355, align 8
  %357 = load %struct.bundle*, %struct.bundle** %10, align 8
  %358 = getelementptr inbounds %struct.bundle, %struct.bundle* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = call i8* @substull(i8* %356, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i64 %362)
  %364 = load i8**, i8*** %7, align 8
  %365 = load i32, i32* %13, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8*, i8** %364, i64 %366
  store i8* %363, i8** %367, align 8
  %368 = load i8**, i8*** %7, align 8
  %369 = load i32, i32* %13, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8*, i8** %368, i64 %370
  %372 = load i8*, i8** %371, align 8
  %373 = load %struct.bundle*, %struct.bundle** %10, align 8
  %374 = call i8* @bundle_GetLabel(%struct.bundle* %373)
  %375 = call i8* @subst(i8* %372, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %374)
  %376 = load i8**, i8*** %7, align 8
  %377 = load i32, i32* %13, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8*, i8** %376, i64 %378
  store i8* %375, i8** %379, align 8
  %380 = load i8**, i8*** %7, align 8
  %381 = load i32, i32* %13, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8*, i8** %380, i64 %382
  %384 = load i8*, i8** %383, align 8
  %385 = load %struct.bundle*, %struct.bundle** %10, align 8
  %386 = getelementptr inbounds %struct.bundle, %struct.bundle* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = call i8* @substip(i8* %384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %389)
  %391 = load i8**, i8*** %7, align 8
  %392 = load i32, i32* %13, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8*, i8** %391, i64 %393
  store i8* %390, i8** %394, align 8
  %395 = load i8**, i8*** %7, align 8
  %396 = load i32, i32* %13, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i8*, i8** %395, i64 %397
  %399 = load i8*, i8** %398, align 8
  %400 = load %struct.bundle*, %struct.bundle** %10, align 8
  %401 = getelementptr inbounds %struct.bundle, %struct.bundle* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %402, i32 0, i32 0
  %404 = call i8* @substipv6(i8* %399, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32* %403)
  %405 = load i8**, i8*** %7, align 8
  %406 = load i32, i32* %13, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i8*, i8** %405, i64 %407
  store i8* %404, i8** %408, align 8
  %409 = load i8**, i8*** %7, align 8
  %410 = load i32, i32* %13, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8*, i8** %409, i64 %411
  %413 = load i8*, i8** %412, align 8
  %414 = load %struct.bundle*, %struct.bundle** %10, align 8
  %415 = getelementptr inbounds %struct.bundle, %struct.bundle* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = call i8* @substipv6prefix(i8* %413, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 %417)
  %419 = load i8**, i8*** %7, align 8
  %420 = load i32, i32* %13, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8*, i8** %419, i64 %421
  store i8* %418, i8** %422, align 8
  %423 = load i8**, i8*** %7, align 8
  %424 = load i32, i32* %13, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8*, i8** %423, i64 %425
  %427 = load i8*, i8** %426, align 8
  %428 = load i64, i64* %16, align 8
  %429 = call i8* @substull(i8* %427, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i64 %428)
  %430 = load i8**, i8*** %7, align 8
  %431 = load i32, i32* %13, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8*, i8** %430, i64 %432
  store i8* %429, i8** %433, align 8
  %434 = load i8**, i8*** %7, align 8
  %435 = load i32, i32* %13, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i8*, i8** %434, i64 %436
  %438 = load i8*, i8** %437, align 8
  %439 = load i64, i64* %17, align 8
  %440 = call i8* @substull(i8* %438, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i64 %439)
  %441 = load i8**, i8*** %7, align 8
  %442 = load i32, i32* %13, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i8*, i8** %441, i64 %443
  store i8* %440, i8** %444, align 8
  %445 = load i8**, i8*** %7, align 8
  %446 = load i32, i32* %13, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i8*, i8** %445, i64 %447
  %449 = load i8*, i8** %448, align 8
  %450 = load i64, i64* %18, align 8
  %451 = call i8* @substull(i8* %449, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i64 %450)
  %452 = load i8**, i8*** %7, align 8
  %453 = load i32, i32* %13, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i8*, i8** %452, i64 %454
  store i8* %451, i8** %455, align 8
  %456 = load i8**, i8*** %7, align 8
  %457 = load i32, i32* %13, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8*, i8** %456, i64 %458
  %460 = load i8*, i8** %459, align 8
  %461 = load i64, i64* %19, align 8
  %462 = call i8* @substull(i8* %460, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i64 %461)
  %463 = load i8**, i8*** %7, align 8
  %464 = load i32, i32* %13, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8*, i8** %463, i64 %465
  store i8* %462, i8** %466, align 8
  %467 = load i8**, i8*** %7, align 8
  %468 = load i32, i32* %13, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i8*, i8** %467, i64 %469
  %471 = load i8*, i8** %470, align 8
  %472 = load %struct.bundle*, %struct.bundle** %10, align 8
  %473 = getelementptr inbounds %struct.bundle, %struct.bundle* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.bundle*, %struct.bundle** %10, align 8
  %480 = getelementptr inbounds %struct.bundle, %struct.bundle* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.bundle*, %struct.bundle** %10, align 8
  %487 = getelementptr inbounds %struct.bundle, %struct.bundle* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = call i8* @mp_Enddisc(i32 %478, i32 %485, i32 %492)
  %494 = call i8* @subst(i8* %471, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* %493)
  %495 = load i8**, i8*** %7, align 8
  %496 = load i32, i32* %13, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i8*, i8** %495, i64 %497
  store i8* %494, i8** %498, align 8
  %499 = load i8**, i8*** %7, align 8
  %500 = load i32, i32* %13, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i8*, i8** %499, i64 %501
  %503 = load i8*, i8** %502, align 8
  %504 = load i64, i64* %12, align 8
  %505 = call i8* @substlong(i8* %503, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i64 %504)
  %506 = load i8**, i8*** %7, align 8
  %507 = load i32, i32* %13, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i8*, i8** %506, i64 %508
  store i8* %505, i8** %509, align 8
  %510 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0, i32 1), align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %524

512:                                              ; preds = %102
  %513 = load i8**, i8*** %7, align 8
  %514 = load i32, i32* %13, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i8*, i8** %513, i64 %515
  %517 = load i8*, i8** %516, align 8
  %518 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0, i32 1), align 8
  %519 = call i8* @substlong(i8* %517, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i64 %518)
  %520 = load i8**, i8*** %7, align 8
  %521 = load i32, i32* %13, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i8*, i8** %520, i64 %522
  store i8* %519, i8** %523, align 8
  br label %536

524:                                              ; preds = %102
  %525 = load i8**, i8*** %7, align 8
  %526 = load i32, i32* %13, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i8*, i8** %525, i64 %527
  %529 = load i8*, i8** %528, align 8
  %530 = load i8*, i8** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0, i32 0), align 8
  %531 = call i8* @subst(i8* %529, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* %530)
  %532 = load i8**, i8*** %7, align 8
  %533 = load i32, i32* %13, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i8*, i8** %532, i64 %534
  store i8* %531, i8** %535, align 8
  br label %536

536:                                              ; preds = %524, %512
  %537 = load i8**, i8*** %7, align 8
  %538 = load i32, i32* %13, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i8*, i8** %537, i64 %539
  %541 = load i8*, i8** %540, align 8
  %542 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %543 = call i8* @subst(i8* %541, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* %542)
  %544 = load i8**, i8*** %7, align 8
  %545 = load i32, i32* %13, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i8*, i8** %544, i64 %546
  store i8* %543, i8** %547, align 8
  %548 = load i8**, i8*** %7, align 8
  %549 = load i32, i32* %13, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i8*, i8** %548, i64 %550
  %552 = load i8*, i8** %551, align 8
  %553 = load %struct.bundle*, %struct.bundle** %10, align 8
  %554 = getelementptr inbounds %struct.bundle, %struct.bundle* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %556, i32 0, i32 0
  %558 = load i8*, i8** %557, align 8
  %559 = call i8* @subst(i8* %552, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* %558)
  %560 = load i8**, i8*** %7, align 8
  %561 = load i32, i32* %13, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i8*, i8** %560, i64 %562
  store i8* %559, i8** %563, align 8
  %564 = load i8**, i8*** %7, align 8
  %565 = load i32, i32* %13, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i8*, i8** %564, i64 %566
  %568 = load i8*, i8** %567, align 8
  %569 = load i8*, i8** @Version, align 8
  %570 = call i8* @subst(i8* %568, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* %569)
  %571 = load i8**, i8*** %7, align 8
  %572 = load i32, i32* %13, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i8*, i8** %571, i64 %573
  store i8* %570, i8** %574, align 8
  br label %575

575:                                              ; preds = %536
  %576 = load i32, i32* %13, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %13, align 4
  br label %98

578:                                              ; preds = %98
  %579 = load i8**, i8*** %7, align 8
  %580 = load i32, i32* %13, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i8*, i8** %579, i64 %581
  store i8* null, i8** %582, align 8
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @bundle_Uptime(%struct.bundle*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i8* @subst(i8*, i8*, i8*) #1

declare dso_local i8* @substip(i8*, i8*, i32) #1

declare dso_local i8* @mp_Enddisc(i32, i32, i32) #1

declare dso_local i8* @substipv6(i8*, i8*, i32*) #1

declare dso_local i8* @substull(i8*, i8*, i64) #1

declare dso_local i8* @bundle_GetLabel(%struct.bundle*) #1

declare dso_local i8* @substipv6prefix(i8*, i8*, i32) #1

declare dso_local i8* @substlong(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
