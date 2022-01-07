; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bpf.c_ng_bpf_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bpf.c_ng_bpf_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ng_bpf_hookprog = type { i8*, i32 }
%struct.ng_bpf_hookstat = type { i8*, i32 }
%struct.TYPE_4__ = type { %struct.ng_bpf_hookstat, %struct.ng_bpf_hookstat* }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @ng_bpf_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_bpf_rcvmsg(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ng_mesg*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_bpf_hookprog*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ng_bpf_hookprog*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ng_bpf_hookstat*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %18 = call i32 @NGI_GET_MSG(i32 %16, %struct.ng_mesg* %17)
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %20 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %202 [
    i32 132, label %23
  ]

23:                                               ; preds = %3
  %24 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %25 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %199 [
    i32 128, label %28
    i32 130, label %72
    i32 129, label %133
    i32 133, label %133
    i32 131, label %133
  ]

28:                                               ; preds = %23
  %29 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %30 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.ng_bpf_hookprog*
  store %struct.ng_bpf_hookprog* %32, %struct.ng_bpf_hookprog** %10, align 8
  %33 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %34 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 16
  br i1 %38, label %49, label %39

39:                                               ; preds = %28
  %40 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %41 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %10, align 8
  %45 = getelementptr inbounds %struct.ng_bpf_hookprog, %struct.ng_bpf_hookprog* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @NG_BPF_HOOKPROG_SIZE(i32 %46)
  %48 = icmp ne i32 %43, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39, %28
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @ERROUT(i32 %50)
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %10, align 8
  %55 = getelementptr inbounds %struct.ng_bpf_hookprog, %struct.ng_bpf_hookprog* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32* @ng_findhook(i32 %53, i8* %56)
  store i32* %57, i32** %11, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @ENOENT, align 4
  %61 = call i32 @ERROUT(i32 %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i32*, i32** %11, align 8
  %64 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %10, align 8
  %65 = bitcast %struct.ng_bpf_hookprog* %64 to %struct.ng_bpf_hookstat*
  %66 = call i32 @ng_bpf_setprog(i32* %63, %struct.ng_bpf_hookstat* %65)
  store i32 %66, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ERROUT(i32 %69)
  br label %71

71:                                               ; preds = %68, %62
  br label %201

72:                                               ; preds = %23
  %73 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %74 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = call i32 @ERROUT(i32 %79)
  br label %81

81:                                               ; preds = %78, %72
  %82 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %83 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %86 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %84, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %94 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32* @ng_findhook(i32 %92, i8* %95)
  store i32* %96, i32** %13, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %81
  %99 = load i32, i32* @ENOENT, align 4
  %100 = call i32 @ERROUT(i32 %99)
  br label %101

101:                                              ; preds = %98, %81
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @NG_HOOK_PRIVATE(i32* %102)
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to %struct.TYPE_4__*
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load %struct.ng_bpf_hookstat*, %struct.ng_bpf_hookstat** %106, align 8
  %108 = bitcast %struct.ng_bpf_hookstat* %107 to %struct.ng_bpf_hookprog*
  store %struct.ng_bpf_hookprog* %108, %struct.ng_bpf_hookprog** %12, align 8
  %109 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %110 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %111 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %12, align 8
  %112 = getelementptr inbounds %struct.ng_bpf_hookprog, %struct.ng_bpf_hookprog* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @NG_BPF_HOOKPROG_SIZE(i32 %113)
  %115 = load i32, i32* @M_NOWAIT, align 4
  %116 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %109, %struct.ng_mesg* %110, i32 %114, i32 %115)
  %117 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %118 = icmp eq %struct.ng_mesg* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %101
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = call i32 @ERROUT(i32 %120)
  br label %122

122:                                              ; preds = %119, %101
  %123 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %12, align 8
  %124 = bitcast %struct.ng_bpf_hookprog* %123 to %struct.ng_bpf_hookstat*
  %125 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %126 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.ng_bpf_hookprog*, %struct.ng_bpf_hookprog** %12, align 8
  %129 = getelementptr inbounds %struct.ng_bpf_hookprog, %struct.ng_bpf_hookprog* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @NG_BPF_HOOKPROG_SIZE(i32 %130)
  %132 = call i32 @bcopy(%struct.ng_bpf_hookstat* %124, i8* %127, i32 %131)
  br label %201

133:                                              ; preds = %23, %23, %23
  %134 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %135 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* @EINVAL, align 4
  %141 = call i32 @ERROUT(i32 %140)
  br label %142

142:                                              ; preds = %139, %133
  %143 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %144 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %147 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %145, i64 %151
  store i8 0, i8* %152, align 1
  %153 = load i32, i32* %4, align 4
  %154 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %155 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32* @ng_findhook(i32 %153, i8* %156)
  store i32* %157, i32** %15, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %142
  %160 = load i32, i32* @ENOENT, align 4
  %161 = call i32 @ERROUT(i32 %160)
  br label %162

162:                                              ; preds = %159, %142
  %163 = load i32*, i32** %15, align 8
  %164 = call i32 @NG_HOOK_PRIVATE(i32* %163)
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to %struct.TYPE_4__*
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store %struct.ng_bpf_hookstat* %167, %struct.ng_bpf_hookstat** %14, align 8
  %168 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %169 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 133
  br i1 %172, label %173, label %189

173:                                              ; preds = %162
  %174 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %175 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %176 = load i32, i32* @M_NOWAIT, align 4
  %177 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %174, %struct.ng_mesg* %175, i32 16, i32 %176)
  %178 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %179 = icmp eq %struct.ng_mesg* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = call i32 @ERROUT(i32 %181)
  br label %183

183:                                              ; preds = %180, %173
  %184 = load %struct.ng_bpf_hookstat*, %struct.ng_bpf_hookstat** %14, align 8
  %185 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %186 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @bcopy(%struct.ng_bpf_hookstat* %184, i8* %187, i32 16)
  br label %189

189:                                              ; preds = %183, %162
  %190 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %191 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 129
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load %struct.ng_bpf_hookstat*, %struct.ng_bpf_hookstat** %14, align 8
  %197 = call i32 @bzero(%struct.ng_bpf_hookstat* %196, i32 16)
  br label %198

198:                                              ; preds = %195, %189
  br label %201

199:                                              ; preds = %23
  %200 = load i32, i32* @EINVAL, align 4
  store i32 %200, i32* %9, align 4
  br label %201

201:                                              ; preds = %199, %198, %122, %71
  br label %204

202:                                              ; preds = %3
  %203 = load i32, i32* @EINVAL, align 4
  store i32 %203, i32* %9, align 4
  br label %204

204:                                              ; preds = %202, %201
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* %5, align 4
  %209 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %210 = call i32 @NG_RESPOND_MSG(i32 %206, i32 %207, i32 %208, %struct.ng_mesg* %209)
  %211 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %212 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %211)
  %213 = load i32, i32* %9, align 4
  ret i32 %213
}

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_BPF_HOOKPROG_SIZE(i32) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32* @ng_findhook(i32, i8*) #1

declare dso_local i32 @ng_bpf_setprog(i32*, %struct.ng_bpf_hookstat*) #1

declare dso_local i32 @NG_HOOK_PRIVATE(i32*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bcopy(%struct.ng_bpf_hookstat*, i8*, i32) #1

declare dso_local i32 @bzero(%struct.ng_bpf_hookstat*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
