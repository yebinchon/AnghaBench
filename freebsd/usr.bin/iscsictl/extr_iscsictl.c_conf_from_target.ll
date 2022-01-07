; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/iscsictl/extr_iscsictl.c_conf_from_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/iscsictl/extr_iscsictl.c_conf_from_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session_conf = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.target = type { i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@SESSION_TYPE_DISCOVERY = common dso_local global i64 0, align 8
@ENABLE_OFF = common dso_local global i64 0, align 8
@PROTOCOL_ISER = common dso_local global i64 0, align 8
@DIGEST_CRC32C = common dso_local global i64 0, align 8
@ISCSI_DIGEST_CRC32C = common dso_local global i8* null, align 8
@ISCSI_DIGEST_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session_conf*, %struct.target*)* @conf_from_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf_from_target(%struct.iscsi_session_conf* %0, %struct.target* %1) #0 {
  %3 = alloca %struct.iscsi_session_conf*, align 8
  %4 = alloca %struct.target*, align 8
  store %struct.iscsi_session_conf* %0, %struct.iscsi_session_conf** %3, align 8
  store %struct.target* %1, %struct.target** %4, align 8
  %5 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %6 = call i32 @memset(%struct.iscsi_session_conf* %5, i32 0, i32 72)
  %7 = load %struct.target*, %struct.target** %4, align 8
  %8 = getelementptr inbounds %struct.target, %struct.target* %7, i32 0, i32 14
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %13 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %12, i32 0, i32 14
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.target*, %struct.target** %4, align 8
  %16 = getelementptr inbounds %struct.target, %struct.target* %15, i32 0, i32 14
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @strlcpy(i32 %14, i32* %17, i32 4)
  br label %19

19:                                               ; preds = %11, %2
  %20 = load %struct.target*, %struct.target** %4, align 8
  %21 = getelementptr inbounds %struct.target, %struct.target* %20, i32 0, i32 13
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %26 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.target*, %struct.target** %4, align 8
  %29 = getelementptr inbounds %struct.target, %struct.target* %28, i32 0, i32 13
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @strlcpy(i32 %27, i32* %30, i32 4)
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.target*, %struct.target** %4, align 8
  %34 = getelementptr inbounds %struct.target, %struct.target* %33, i32 0, i32 12
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %39 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.target*, %struct.target** %4, align 8
  %42 = getelementptr inbounds %struct.target, %struct.target* %41, i32 0, i32 12
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @strlcpy(i32 %40, i32* %43, i32 4)
  br label %45

45:                                               ; preds = %37, %32
  %46 = load %struct.target*, %struct.target** %4, align 8
  %47 = getelementptr inbounds %struct.target, %struct.target* %46, i32 0, i32 11
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %52 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.target*, %struct.target** %4, align 8
  %55 = getelementptr inbounds %struct.target, %struct.target* %54, i32 0, i32 11
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @strlcpy(i32 %53, i32* %56, i32 4)
  br label %58

58:                                               ; preds = %50, %45
  %59 = load %struct.target*, %struct.target** %4, align 8
  %60 = getelementptr inbounds %struct.target, %struct.target* %59, i32 0, i32 10
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %65 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.target*, %struct.target** %4, align 8
  %68 = getelementptr inbounds %struct.target, %struct.target* %67, i32 0, i32 10
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @strlcpy(i32 %66, i32* %69, i32 4)
  br label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.target*, %struct.target** %4, align 8
  %73 = getelementptr inbounds %struct.target, %struct.target* %72, i32 0, i32 9
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %78 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.target*, %struct.target** %4, align 8
  %81 = getelementptr inbounds %struct.target, %struct.target* %80, i32 0, i32 9
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @strlcpy(i32 %79, i32* %82, i32 4)
  br label %84

84:                                               ; preds = %76, %71
  %85 = load %struct.target*, %struct.target** %4, align 8
  %86 = getelementptr inbounds %struct.target, %struct.target* %85, i32 0, i32 8
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %91 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.target*, %struct.target** %4, align 8
  %94 = getelementptr inbounds %struct.target, %struct.target* %93, i32 0, i32 8
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @strlcpy(i32 %92, i32* %95, i32 4)
  br label %97

97:                                               ; preds = %89, %84
  %98 = load %struct.target*, %struct.target** %4, align 8
  %99 = getelementptr inbounds %struct.target, %struct.target* %98, i32 0, i32 7
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %104 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.target*, %struct.target** %4, align 8
  %107 = getelementptr inbounds %struct.target, %struct.target* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @strlcpy(i32 %105, i32* %108, i32 4)
  br label %110

110:                                              ; preds = %102, %97
  %111 = load %struct.target*, %struct.target** %4, align 8
  %112 = getelementptr inbounds %struct.target, %struct.target* %111, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %117 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.target*, %struct.target** %4, align 8
  %120 = getelementptr inbounds %struct.target, %struct.target* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @strlcpy(i32 %118, i32* %121, i32 4)
  br label %123

123:                                              ; preds = %115, %110
  %124 = load %struct.target*, %struct.target** %4, align 8
  %125 = getelementptr inbounds %struct.target, %struct.target* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @SESSION_TYPE_DISCOVERY, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %131 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %123
  %133 = load %struct.target*, %struct.target** %4, align 8
  %134 = getelementptr inbounds %struct.target, %struct.target* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ENABLE_OFF, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %140 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %139, i32 0, i32 1
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %132
  %142 = load %struct.target*, %struct.target** %4, align 8
  %143 = getelementptr inbounds %struct.target, %struct.target* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @PROTOCOL_ISER, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %149 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %148, i32 0, i32 2
  store i32 1, i32* %149, align 8
  br label %150

150:                                              ; preds = %147, %141
  %151 = load %struct.target*, %struct.target** %4, align 8
  %152 = getelementptr inbounds %struct.target, %struct.target* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %157 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.target*, %struct.target** %4, align 8
  %160 = getelementptr inbounds %struct.target, %struct.target* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @strlcpy(i32 %158, i32* %161, i32 4)
  br label %163

163:                                              ; preds = %155, %150
  %164 = load %struct.target*, %struct.target** %4, align 8
  %165 = getelementptr inbounds %struct.target, %struct.target* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @DIGEST_CRC32C, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load i8*, i8** @ISCSI_DIGEST_CRC32C, align 8
  %171 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %172 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %171, i32 0, i32 4
  store i8* %170, i8** %172, align 8
  br label %177

173:                                              ; preds = %163
  %174 = load i8*, i8** @ISCSI_DIGEST_NONE, align 8
  %175 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %176 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %175, i32 0, i32 4
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %173, %169
  %178 = load %struct.target*, %struct.target** %4, align 8
  %179 = getelementptr inbounds %struct.target, %struct.target* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @DIGEST_CRC32C, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i8*, i8** @ISCSI_DIGEST_CRC32C, align 8
  %185 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %186 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %185, i32 0, i32 3
  store i8* %184, i8** %186, align 8
  br label %191

187:                                              ; preds = %177
  %188 = load i8*, i8** @ISCSI_DIGEST_NONE, align 8
  %189 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %190 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %187, %183
  ret void
}

declare dso_local i32 @memset(%struct.iscsi_session_conf*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
