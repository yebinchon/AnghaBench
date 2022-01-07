; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_bsm.c_audit_sys_auditon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_bsm.c_audit_sys_auditon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_record = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_17__, i32, i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.au_record = type { i32 }
%struct.au_token = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"setkmask:as_success\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"setkmask:as_failure\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"setqctrl:aq_hiwater\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"setqctrl:aq_lowater\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"setqctrl:aq_bufsz\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"setqctrl:aq_delay\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"setqctrl:aq_minfree\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"setumask:as_success\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"setumask:as_failure\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"setsmask:as_success\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"setsmask:as_failure\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"setcond\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"setclass:ec_event\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"setclass:ec_class\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"setpmask:as_success\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"setpmask:as_failure\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"setfsize:filesize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_record*, %struct.au_record*)* @audit_sys_auditon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_sys_auditon(%struct.audit_record* %0, %struct.au_record* %1) #0 {
  %3 = alloca %struct.audit_record*, align 8
  %4 = alloca %struct.au_record*, align 8
  %5 = alloca %struct.au_token*, align 8
  store %struct.audit_record* %0, %struct.audit_record** %3, align 8
  store %struct.au_record* %1, %struct.au_record** %4, align 8
  %6 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %7 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.au_token* @au_to_arg32(i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.au_token* %9, %struct.au_token** %5, align 8
  %10 = load %struct.au_record*, %struct.au_record** %4, align 8
  %11 = load %struct.au_token*, %struct.au_token** %5, align 8
  %12 = call i32 @kau_write(%struct.au_record* %10, %struct.au_token* %11)
  %13 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %14 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %276 [
    i32 138, label %16
    i32 131, label %32
    i32 133, label %41
    i32 137, label %60
    i32 130, label %113
    i32 128, label %159
    i32 129, label %180
    i32 139, label %201
    i32 135, label %217
    i32 136, label %226
    i32 132, label %245
    i32 134, label %266
  ]

16:                                               ; preds = %2
  %17 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %18 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %24 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.au_token* @au_to_arg64(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store %struct.au_token* %27, %struct.au_token** %5, align 8
  %28 = load %struct.au_record*, %struct.au_record** %4, align 8
  %29 = load %struct.au_token*, %struct.au_token** %5, align 8
  %30 = call i32 @kau_write(%struct.au_record* %28, %struct.au_token* %29)
  br label %277

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %2, %31
  %33 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %34 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store %struct.au_token* %37, %struct.au_token** %5, align 8
  %38 = load %struct.au_record*, %struct.au_record** %4, align 8
  %39 = load %struct.au_token*, %struct.au_token** %5, align 8
  %40 = call i32 @kau_write(%struct.au_record* %38, %struct.au_token* %39)
  br label %277

41:                                               ; preds = %2
  %42 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %43 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  store %struct.au_token* %47, %struct.au_token** %5, align 8
  %48 = load %struct.au_record*, %struct.au_record** %4, align 8
  %49 = load %struct.au_token*, %struct.au_token** %5, align 8
  %50 = call i32 @kau_write(%struct.au_record* %48, %struct.au_token* %49)
  %51 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %52 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  store %struct.au_token* %56, %struct.au_token** %5, align 8
  %57 = load %struct.au_record*, %struct.au_record** %4, align 8
  %58 = load %struct.au_token*, %struct.au_token** %5, align 8
  %59 = call i32 @kau_write(%struct.au_record* %57, %struct.au_token* %58)
  br label %277

60:                                               ; preds = %2
  %61 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %62 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %64, 4
  br i1 %65, label %66, label %112

66:                                               ; preds = %60
  %67 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %68 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.au_token* @au_to_arg64(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  store %struct.au_token* %72, %struct.au_token** %5, align 8
  %73 = load %struct.au_record*, %struct.au_record** %4, align 8
  %74 = load %struct.au_token*, %struct.au_token** %5, align 8
  %75 = call i32 @kau_write(%struct.au_record* %73, %struct.au_token* %74)
  %76 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %77 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.au_token* @au_to_arg64(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  store %struct.au_token* %81, %struct.au_token** %5, align 8
  %82 = load %struct.au_record*, %struct.au_record** %4, align 8
  %83 = load %struct.au_token*, %struct.au_token** %5, align 8
  %84 = call i32 @kau_write(%struct.au_record* %82, %struct.au_token* %83)
  %85 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %86 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.au_token* @au_to_arg64(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  store %struct.au_token* %90, %struct.au_token** %5, align 8
  %91 = load %struct.au_record*, %struct.au_record** %4, align 8
  %92 = load %struct.au_token*, %struct.au_token** %5, align 8
  %93 = call i32 @kau_write(%struct.au_record* %91, %struct.au_token* %92)
  %94 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %95 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.au_token* @au_to_arg64(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  store %struct.au_token* %99, %struct.au_token** %5, align 8
  %100 = load %struct.au_record*, %struct.au_record** %4, align 8
  %101 = load %struct.au_token*, %struct.au_token** %5, align 8
  %102 = call i32 @kau_write(%struct.au_record* %100, %struct.au_token* %101)
  %103 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %104 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.au_token* @au_to_arg64(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %107)
  store %struct.au_token* %108, %struct.au_token** %5, align 8
  %109 = load %struct.au_record*, %struct.au_record** %4, align 8
  %110 = load %struct.au_token*, %struct.au_token** %5, align 8
  %111 = call i32 @kau_write(%struct.au_record* %109, %struct.au_token* %110)
  br label %277

112:                                              ; preds = %60
  br label %113

113:                                              ; preds = %2, %112
  %114 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %115 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  store %struct.au_token* %119, %struct.au_token** %5, align 8
  %120 = load %struct.au_record*, %struct.au_record** %4, align 8
  %121 = load %struct.au_token*, %struct.au_token** %5, align 8
  %122 = call i32 @kau_write(%struct.au_record* %120, %struct.au_token* %121)
  %123 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %124 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  store %struct.au_token* %128, %struct.au_token** %5, align 8
  %129 = load %struct.au_record*, %struct.au_record** %4, align 8
  %130 = load %struct.au_token*, %struct.au_token** %5, align 8
  %131 = call i32 @kau_write(%struct.au_record* %129, %struct.au_token* %130)
  %132 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %133 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  store %struct.au_token* %137, %struct.au_token** %5, align 8
  %138 = load %struct.au_record*, %struct.au_record** %4, align 8
  %139 = load %struct.au_token*, %struct.au_token** %5, align 8
  %140 = call i32 @kau_write(%struct.au_record* %138, %struct.au_token* %139)
  %141 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %142 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %145)
  store %struct.au_token* %146, %struct.au_token** %5, align 8
  %147 = load %struct.au_record*, %struct.au_record** %4, align 8
  %148 = load %struct.au_token*, %struct.au_token** %5, align 8
  %149 = call i32 @kau_write(%struct.au_record* %147, %struct.au_token* %148)
  %150 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %151 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %154)
  store %struct.au_token* %155, %struct.au_token** %5, align 8
  %156 = load %struct.au_record*, %struct.au_record** %4, align 8
  %157 = load %struct.au_token*, %struct.au_token** %5, align 8
  %158 = call i32 @kau_write(%struct.au_record* %156, %struct.au_token* %157)
  br label %277

159:                                              ; preds = %2
  %160 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %161 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %165)
  store %struct.au_token* %166, %struct.au_token** %5, align 8
  %167 = load %struct.au_record*, %struct.au_record** %4, align 8
  %168 = load %struct.au_token*, %struct.au_token** %5, align 8
  %169 = call i32 @kau_write(%struct.au_record* %167, %struct.au_token* %168)
  %170 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %171 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %175)
  store %struct.au_token* %176, %struct.au_token** %5, align 8
  %177 = load %struct.au_record*, %struct.au_record** %4, align 8
  %178 = load %struct.au_token*, %struct.au_token** %5, align 8
  %179 = call i32 @kau_write(%struct.au_record* %177, %struct.au_token* %178)
  br label %277

180:                                              ; preds = %2
  %181 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %182 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %186)
  store %struct.au_token* %187, %struct.au_token** %5, align 8
  %188 = load %struct.au_record*, %struct.au_record** %4, align 8
  %189 = load %struct.au_token*, %struct.au_token** %5, align 8
  %190 = call i32 @kau_write(%struct.au_record* %188, %struct.au_token* %189)
  %191 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %192 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %196)
  store %struct.au_token* %197, %struct.au_token** %5, align 8
  %198 = load %struct.au_record*, %struct.au_record** %4, align 8
  %199 = load %struct.au_token*, %struct.au_token** %5, align 8
  %200 = call i32 @kau_write(%struct.au_record* %198, %struct.au_token* %199)
  br label %277

201:                                              ; preds = %2
  %202 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %203 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = icmp eq i64 %205, 4
  br i1 %206, label %207, label %216

207:                                              ; preds = %201
  %208 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %209 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = call %struct.au_token* @au_to_arg64(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %211)
  store %struct.au_token* %212, %struct.au_token** %5, align 8
  %213 = load %struct.au_record*, %struct.au_record** %4, align 8
  %214 = load %struct.au_token*, %struct.au_token** %5, align 8
  %215 = call i32 @kau_write(%struct.au_record* %213, %struct.au_token* %214)
  br label %277

216:                                              ; preds = %201
  br label %217

217:                                              ; preds = %2, %216
  %218 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %219 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %221)
  store %struct.au_token* %222, %struct.au_token** %5, align 8
  %223 = load %struct.au_record*, %struct.au_record** %4, align 8
  %224 = load %struct.au_token*, %struct.au_token** %5, align 8
  %225 = call i32 @kau_write(%struct.au_record* %223, %struct.au_token* %224)
  br label %277

226:                                              ; preds = %2
  %227 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %228 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %231)
  store %struct.au_token* %232, %struct.au_token** %5, align 8
  %233 = load %struct.au_record*, %struct.au_record** %4, align 8
  %234 = load %struct.au_token*, %struct.au_token** %5, align 8
  %235 = call i32 @kau_write(%struct.au_record* %233, %struct.au_token* %234)
  %236 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %237 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %240)
  store %struct.au_token* %241, %struct.au_token** %5, align 8
  %242 = load %struct.au_record*, %struct.au_record** %4, align 8
  %243 = load %struct.au_token*, %struct.au_token** %5, align 8
  %244 = call i32 @kau_write(%struct.au_record* %242, %struct.au_token* %243)
  br label %277

245:                                              ; preds = %2
  %246 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %247 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %251)
  store %struct.au_token* %252, %struct.au_token** %5, align 8
  %253 = load %struct.au_record*, %struct.au_record** %4, align 8
  %254 = load %struct.au_token*, %struct.au_token** %5, align 8
  %255 = call i32 @kau_write(%struct.au_record* %253, %struct.au_token* %254)
  %256 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %257 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %261)
  store %struct.au_token* %262, %struct.au_token** %5, align 8
  %263 = load %struct.au_record*, %struct.au_record** %4, align 8
  %264 = load %struct.au_token*, %struct.au_token** %5, align 8
  %265 = call i32 @kau_write(%struct.au_record* %263, %struct.au_token* %264)
  br label %277

266:                                              ; preds = %2
  %267 = load %struct.audit_record*, %struct.audit_record** %3, align 8
  %268 = getelementptr inbounds %struct.audit_record, %struct.audit_record* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call %struct.au_token* @au_to_arg32(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %271)
  store %struct.au_token* %272, %struct.au_token** %5, align 8
  %273 = load %struct.au_record*, %struct.au_record** %4, align 8
  %274 = load %struct.au_token*, %struct.au_token** %5, align 8
  %275 = call i32 @kau_write(%struct.au_record* %273, %struct.au_token* %274)
  br label %277

276:                                              ; preds = %2
  br label %277

277:                                              ; preds = %276, %266, %245, %226, %217, %207, %180, %159, %113, %66, %41, %32, %22
  ret void
}

declare dso_local %struct.au_token* @au_to_arg32(i32, i8*, i32) #1

declare dso_local i32 @kau_write(%struct.au_record*, %struct.au_token*) #1

declare dso_local %struct.au_token* @au_to_arg64(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
