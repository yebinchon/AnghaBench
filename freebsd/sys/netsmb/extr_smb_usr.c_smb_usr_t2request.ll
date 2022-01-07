; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_usr.c_smb_usr_t2request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_usr.c_smb_usr_t2request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i32 }
%struct.smbioc_t2rq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32* }
%struct.smb_cred = type { i32 }
%struct.smb_t2rq = type { i32, i32, i32, i32*, %struct.mdchain, %struct.mdchain, i32, i32, i64, i32* }
%struct.mdchain = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@M_SMBTEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@MB_MUSER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_usr_t2request(%struct.smb_share* %0, %struct.smbioc_t2rq* %1, %struct.smb_cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_share*, align 8
  %6 = alloca %struct.smbioc_t2rq*, align 8
  %7 = alloca %struct.smb_cred*, align 8
  %8 = alloca %struct.smb_t2rq*, align 8
  %9 = alloca %struct.mdchain*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.smb_share* %0, %struct.smb_share** %5, align 8
  store %struct.smbioc_t2rq* %1, %struct.smbioc_t2rq** %6, align 8
  store %struct.smb_cred* %2, %struct.smb_cred** %7, align 8
  %12 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %13 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 3
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %204

18:                                               ; preds = %3
  %19 = load i32, i32* @M_SMBTEMP, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = call %struct.smb_t2rq* @malloc(i32 64, i32 %19, i32 %20)
  store %struct.smb_t2rq* %21, %struct.smb_t2rq** %8, align 8
  %22 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %23 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %24 = call i32 @SSTOCP(%struct.smb_share* %23)
  %25 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %26 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %25, i32 0, i32 10
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.smb_cred*, %struct.smb_cred** %7, align 8
  %31 = call i32 @smb_t2_init(%struct.smb_t2rq* %22, i32 %24, i32 %29, %struct.smb_cred* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %36 = load i32, i32* @M_SMBTEMP, align 4
  %37 = call i32 @free(%struct.smb_t2rq* %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %204

39:                                               ; preds = %18
  %40 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %41 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %44 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 %42, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %49 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %48, i32 0, i32 10
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %52 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %51, i32 0, i32 9
  store i32* %50, i32** %52, align 8
  br label %53

53:                                               ; preds = %47, %39
  %54 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %55 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %60 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = call i32* @smb_strdupin(i64 %61, i32 128)
  %63 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %64 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  %65 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %66 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* @ENOMEM, align 4
  store i32 %70, i32* %10, align 4
  br label %187

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %53
  %73 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %74 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %73, i32 0, i32 8
  store i64 0, i64* %74, align 8
  %75 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %76 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %79 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %81 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %84 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %86 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %85, i32 0, i32 7
  %87 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %88 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %91 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @smb_cpdatain(i32* %86, i32 %89, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %72
  br label %187

97:                                               ; preds = %72
  %98 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %99 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %98, i32 0, i32 6
  %100 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %101 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %104 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @smb_cpdatain(i32* %99, i32 %102, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  br label %187

110:                                              ; preds = %97
  %111 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %112 = call i32 @smb_t2_request(%struct.smb_t2rq* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %187

116:                                              ; preds = %110
  %117 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %118 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %117, i32 0, i32 5
  store %struct.mdchain* %118, %struct.mdchain** %9, align 8
  %119 = load %struct.mdchain*, %struct.mdchain** %9, align 8
  %120 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %116
  %124 = load %struct.mdchain*, %struct.mdchain** %9, align 8
  %125 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @m_fixhdr(i64 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %130 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %128, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32, i32* @EMSGSIZE, align 4
  store i32 %134, i32* %10, align 4
  br label %187

135:                                              ; preds = %123
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %138 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.mdchain*, %struct.mdchain** %9, align 8
  %140 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %141 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @MB_MUSER, align 4
  %145 = call i32 @md_get_mem(%struct.mdchain* %139, i32 %142, i32 %143, i32 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  br label %187

149:                                              ; preds = %135
  br label %153

150:                                              ; preds = %116
  %151 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %152 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %149
  %154 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %155 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %154, i32 0, i32 4
  store %struct.mdchain* %155, %struct.mdchain** %9, align 8
  %156 = load %struct.mdchain*, %struct.mdchain** %9, align 8
  %157 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %153
  %161 = load %struct.mdchain*, %struct.mdchain** %9, align 8
  %162 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @m_fixhdr(i64 %163)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %167 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = icmp sgt i32 %165, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %160
  %171 = load i32, i32* @EMSGSIZE, align 4
  store i32 %171, i32* %10, align 4
  br label %187

172:                                              ; preds = %160
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %175 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load %struct.mdchain*, %struct.mdchain** %9, align 8
  %177 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %178 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @MB_MUSER, align 4
  %182 = call i32 @md_get_mem(%struct.mdchain* %176, i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %10, align 4
  br label %186

183:                                              ; preds = %153
  %184 = load %struct.smbioc_t2rq*, %struct.smbioc_t2rq** %6, align 8
  %185 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %184, i32 0, i32 2
  store i32 0, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %172
  br label %187

187:                                              ; preds = %186, %170, %148, %133, %115, %109, %96, %69
  %188 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %189 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %194 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @smb_strfree(i32* %195)
  br label %197

197:                                              ; preds = %192, %187
  %198 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %199 = call i32 @smb_t2_done(%struct.smb_t2rq* %198)
  %200 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %201 = load i32, i32* @M_SMBTEMP, align 4
  %202 = call i32 @free(%struct.smb_t2rq* %200, i32 %201)
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %197, %34, %16
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.smb_t2rq* @malloc(i32, i32, i32) #1

declare dso_local i32 @smb_t2_init(%struct.smb_t2rq*, i32, i32, %struct.smb_cred*) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @free(%struct.smb_t2rq*, i32) #1

declare dso_local i32* @smb_strdupin(i64, i32) #1

declare dso_local i32 @smb_cpdatain(i32*, i32, i32) #1

declare dso_local i32 @smb_t2_request(%struct.smb_t2rq*) #1

declare dso_local i32 @m_fixhdr(i64) #1

declare dso_local i32 @md_get_mem(%struct.mdchain*, i32, i32, i32) #1

declare dso_local i32 @smb_strfree(i32*) #1

declare dso_local i32 @smb_t2_done(%struct.smb_t2rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
